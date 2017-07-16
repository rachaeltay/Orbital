class Changeposts < ActiveRecord::Migration
  def change
    remove_column :posts, :start_time
    remove_column :posts, :end_time
    add_column :posts, :start_time, :date
    add_column :posts, :end_time, :date
  end
end
