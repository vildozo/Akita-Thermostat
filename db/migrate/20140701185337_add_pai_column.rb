class AddPaiColumn < ActiveRecord::Migration
  def change
  	add_column :thermostats, :pai, :string
  end
end
