class AddDiagnostictToMedicamente < ActiveRecord::Migration
  def change
    say "adaug diagnosticu pentru care e prescris medicamentu"
    add_column :medicamentes, :diagnostic, :string
  end
end
