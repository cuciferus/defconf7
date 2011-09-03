class Pacient < ActiveRecord::Base
  has_many :evaluares
  has_many :reteta
  accepts_nested_attributes_for :evaluares
  accepts_nested_attributes_for :reteta
end
