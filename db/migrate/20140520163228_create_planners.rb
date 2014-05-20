class CreatePlanners < ActiveRecord::Migration
  def change
    create_table :planners do |t|
      t.time :start_time
      t.time :end_time
      t.string :day
      t.integer :max_temperature
      t.integer :min_temperature
      t.date :start_date
      t.date :end_date
      t.boolean :enable
      t.references :termostat, index: true

      t.timestamps
    end
  end
end
