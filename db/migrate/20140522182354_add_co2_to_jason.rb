class AddCo2ToJason < ActiveRecord::Migration
  def change
  	add_column :jasons, :co2, :integer
  end
end
