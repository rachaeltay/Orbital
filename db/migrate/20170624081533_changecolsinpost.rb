class Changecolsinpost < ActiveRecord::Migration
  def change
    add_column :posts, :start_date, :string
    add_column :posts, :end_date, :string
    remove_column :posts, :start_time, :string
    remove_column :posts, :end_time, :string
  end
end
