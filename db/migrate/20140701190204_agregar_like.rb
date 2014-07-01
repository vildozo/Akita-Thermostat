class AgregarLike < ActiveRecord::Migration
  def change
  	add_column :observacions, :like, :string
  end
end
