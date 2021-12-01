class Donnateur < ApplicationRecord
  before_save :cap
  
  def to_s
    "#{self.nom} #{self.prenom}"
  end
  
    private
  # gere les maj min pour les noms prenoms
  def cap
    self.nom=self.nom.upcase
    self.prenom=self.prenom.capitalize
  end
end
