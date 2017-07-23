class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.string :picture
      t.string   :host
      t.string   :picture
      t.date     :start_time
      t.date     :end_time
      t.integer  :user_id
      t.string   :signup_link
      t.string   :contact_number
      t.string   :tag

      t.timestamps null: false
    end
  end
end
