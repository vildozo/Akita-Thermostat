class AddPaisRefToThermostat < ActiveRecord::Migration
  def change
    add_reference :pais, :thermostats, index: true
  end
end
