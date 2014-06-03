class CreateThermostats < ActiveRecord::Migration
  def change
    create_table :thermostats do |t|
      t.integer :temperature
      t.string :serial
      t.references :user, index: true
<<<<<<< HEAD
      t.references :location, index: true
=======
       t.references :location, index: true

>>>>>>> 5c81b62adb274d481ba64525ef62a814743aa201
      t.timestamps
    end
  end
end
