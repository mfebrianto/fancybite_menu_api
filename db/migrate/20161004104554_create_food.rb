# this is to create foods table
class CreateFood < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :description
      t.decimal :price, precision: 8, scale: 2
    end
  end
end
