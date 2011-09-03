class CreateReteta < ActiveRecord::Migration
  def change
    create_table :reteta do |t|
      t.date :data
      t.integer :cantitate
      t.integer :serie
      t.references :pacient
      t.references :medicamente

      t.timestamps
    end
    add_index :reteta, :pacient_id
    add_index :reteta, :medicamente_id
  end
end
