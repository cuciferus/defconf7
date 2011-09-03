class Medicamente < ActiveRecord::Base
  has_many :reteta
  accepts_nested_attributes_for :reteta
  def self.to_dict
    #asta nu stiu exact inca cum trebuie cred ca grouped_collecition_select
    aranjate = {}
    Medicamente.select("DISTINCT(clasa)").map(&:clasa).each do |clasa|
      h = []
      Medicamente.where(:clasa => clasa).each do |medicament|
        h<< medicament.nume
      end
      aranjate[clasa] = h
    end
    aranjate
  end
  def self.clase
    Medicamente.select("DISTINCT(clasa)").map(&:clasa)
  end
  def self.din_clasa(clasa)
    #nu returneaza idu de medicamente nici o metoda, de rezolvat
    h=[]
    Medicamente.where(:clasa => clasa).each do |pastila|
      h<< pastila.nume
    end
    h
  end
end
