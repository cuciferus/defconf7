class Evaluare < ActiveRecord::Base
  belongs_to :pacient
  has_many :alte_analizes
  accepts_nested_attributes_for :alte_analizes
end
