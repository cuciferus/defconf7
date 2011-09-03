class CreateEvaluares < ActiveRecord::Migration
  def change
    create_table :evaluares do |t|
      t.date :data
      t.text :diagnostice
      t.float :uree
      t.float :creatinina
      t.float :tgo
      t.float :tgp
      t.float :fosfataza_alcalina
      t.float :calciu
      t.float :fosfor
      t.float :albumina
      t.float :leucocite_sange
      t.float :hemoglobina
      t.float :hematocrit
      t.float :plachete
      t.float :glicemie
      t.float :sodiu
      t.float :potasiu
      t.integer :gucoza_urina
      t.integer :proteina_urina
      t.integer :leucocite_urina
      t.boolean :nitriti
      t.string :germeni
      t.float :raport_a_c
      t.float :microalb
      t.float :bicarb
      t.float :colesterol
      t.float :trigliceride
      t.references :pacient

      t.timestamps
    end
    add_index :evaluares, :pacient_id
  end
end
