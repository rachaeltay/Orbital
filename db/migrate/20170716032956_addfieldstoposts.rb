class Addfieldstoposts < ActiveRecord::Migration
  def change
    add_column :posts, :signup_link, :string
    add_column :posts, :contact_number, :string
  end
end
