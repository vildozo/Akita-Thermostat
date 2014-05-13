class CreateThermostats < ActiveRecord::Migration
  def change
    create_table :thermostats do |t|
      t.string :serial
      t.references :user, index: true

      t.timestamps
    end
  end
end
