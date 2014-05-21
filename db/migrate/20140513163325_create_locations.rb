class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :property
      t.string :city
      t.references :user, index: true
      t.references :thermostat, index: true

      t.timestamps
    end
  end
end
