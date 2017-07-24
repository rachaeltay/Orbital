class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:index]

  # GET /posts
  # GET /posts.json
  def index
    Post.all.each do |p|
      if p.end_time < Date.today
        p.destroy
      end
    end
    
    if params[:tag] == "All" || params[:tag].nil?
      @posts = Post.all.order(created_at: :desc)
    else
      @posts = Post.where(tag: params[:tag]).order(created_at: :desc)
    end
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @uploader = PictureUploader.new
    if current_user.oauth_token
      @friends = []
      if current_user.friendslist.length > 0
        current_user.friendslist.each do |friend|
          user = User.find_by(uid: friend["id"])
          if Signup.find_by(user_id: user.id, post_id: @post.id)
            @friends << friend
          end
        end  
      end
    end
  end

  # GET /posts/new
  def new
    if !user_signed_in?
      respond_to do |format|
        format.html { redirect_to root_url, notice: 'Login to add a post!' }
        format.json { head :no_content }
      end
    end
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    if !user_signed_in?
      respond_to do |format|
        format.html { redirect_to root_url, notice: 'Login to add a post!' }
        format.json { head :no_content }
      end
    end
      
    @post = Post.new(post_params)
    
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render @post, status: :created, location: :show }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def add
    if !user_signed_in?
      respond_to do |format|
        format.html { redirect_to root_url, notice: 'Login to add to calendar!' }
      end
    end
    
    signup = Signup.find_by(user_id: current_user.id, post_id: set_post.id)
    
    if signup != nil
      respond_to do |format|
        format.html { redirect_to set_post and return}
        flash[:notice] = 'Event already in calendar!'
      end
    end
    
    @signup = Signup.new(user_id: current_user.id, post_id: set_post.id)
    @signup.save
    respond_to do |format|
      format.html { redirect_to @post }
      flash[:success] = 'Added to calendar!'
    end
  end
  
  
  def remove
    @signup = Signup.find_by(user_id: current_user.id, post_id: params[:id])
    if @signup.destroy
      respond_to do |format|
        format.html { redirect_to current_user, notice: 'Event was removed from calendar' }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :description, :host, :start_time, :end_time, :picture, :user_id, :contact_number, :signup_link, :tag)
    end
end
