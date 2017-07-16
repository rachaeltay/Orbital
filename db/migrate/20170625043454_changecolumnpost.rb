class Changecolumnpost < ActiveRecord::Migration
  def change
    rename_column :posts, :start_date, :start_time
    rename_column :posts, :end_date, :end_time
  end
end
