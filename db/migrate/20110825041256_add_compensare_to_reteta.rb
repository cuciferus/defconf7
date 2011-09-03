class AddCompensareToReteta < ActiveRecord::Migration
  def change
    say "adaug si cum sa compenseaza"
    add_column :medicamentes, :compensare, :string
  end
end
