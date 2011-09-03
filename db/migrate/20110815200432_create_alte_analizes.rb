class CreateAlteAnalizes < ActiveRecord::Migration
  def change
    create_table :alte_analizes do |t|
      t.string :nume
      t.float :valuare
      t.string :unitate_masura
      t.references :evaluare

      t.timestamps
    end
    add_index :alte_analizes, :evaluare_id
  end
end
