class UpdatesController < ApplicationController

  def new
    @update = Update.new
    @post = Post.find(params[:format])
  end
  
  def create
    @update = Update.new(update_params)
    @post = Post.find(params[:update][:post_id])
    
    respond_to do |format|
      if @update.save
        format.html { redirect_to @post, notice: 'Update was successfully created.' }
        format.json { render @post, status: :created, location: :show }
      else
        format.html { render :new }
      end
    end
  end
  
  private
  
  def update_params
    params.require(:update).permit(:post_id, :body)
  end
end
