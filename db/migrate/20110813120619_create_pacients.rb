class CreatePacients < ActiveRecord::Migration
  def change
    create_table :pacients do |t|
      t.string :nume
      t.string :prenume
      t.integer :cnp
      t.date :debut_diabet
      t.string :focad
      t.text :adresa
      t.integer :tel

      t.timestamps
    end
  end
end
