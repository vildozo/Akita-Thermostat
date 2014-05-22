class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :property
      t.string :room
      t.string :city
      t.string :address
      t.references :thermostat, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
