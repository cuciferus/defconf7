class AddDozaDciToMedicament < ActiveRecord::Migration
  def change
    say "Adaug coloane in tabelu de medicamente"
    add_column :medicamentes, :doza, :integer
    add_column :medicamentes, :dci, :string
  end
end
