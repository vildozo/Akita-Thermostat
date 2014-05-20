class AddColumnUbication < ActiveRecord::Migration

   def self.up
    add_column :locations, :ubication, :string
  end
end
