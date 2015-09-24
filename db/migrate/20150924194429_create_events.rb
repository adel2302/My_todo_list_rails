class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events 
    add_column :events, :date, :string
    add_column :events, :time, :string
    add_column :events, :title, :string
    add_column :events, :content, :string
  end
end
