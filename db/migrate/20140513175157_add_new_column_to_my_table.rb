class AddNewColumnToMyTable < ActiveRecord::Migration
  def change
  end
 def self.up
  add_column :locations, :ubication, :string
end
end
