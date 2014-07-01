class CreatePais < ActiveRecord::Migration
  def change
    create_table :pais do |t|
      t.string :nombre
      t.string :codigo

      t.timestamps
    end
  end
end
