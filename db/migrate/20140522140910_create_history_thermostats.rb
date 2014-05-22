class CreateHistoryThermostats < ActiveRecord::Migration
  def change
    create_table :history_thermostats do |t|
      t.integer :temperature
      t.integer :humidity
      t.references :thermostat, index: true
      t.integer :saving

      t.timestamps
    end
  end
end
