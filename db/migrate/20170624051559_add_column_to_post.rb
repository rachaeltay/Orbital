class AddColumnToPost < ActiveRecord::Migration
  def change
    add_column :posts, :start_time, :datetime
    add_column :posts, :end_time, :datetime
  end
end
