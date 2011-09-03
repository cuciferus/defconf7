class CreateMedicamentes < ActiveRecord::Migration
  def change
    create_table :medicamentes do |t|
      t.string :clasa
      t.string :nume
      t.integer :interval

      t.timestamps
    end
  end
end
