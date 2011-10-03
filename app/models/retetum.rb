class Retetum < ActiveRecord::Base
  belongs_to :pacient
  belongs_to :medicamente
  def pastile
    Medicamente.all.collect
  end
end
