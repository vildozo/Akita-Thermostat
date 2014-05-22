class CreatePlanners < ActiveRecord::Migration
  def change
    create_table :planners do |t|
      t.string :week_day
      t.integer :max_temperature
      t.integer :min_temperature
      t.string :schedule
      t.references :thermostat, index: true

      t.timestamps
    end
  end
end
