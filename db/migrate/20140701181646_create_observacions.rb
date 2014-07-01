class CreateObservacions < ActiveRecord::Migration
  def change
    create_table :observacions do |t|
      t.references :thermostat, index: true
      t.string :description

      t.timestamps
    end
  end
end
