class Mort < ActiveRecord::Base
  has_many :transactions
  def to_s
    "#{self.nom.upcase} #{self.prenom.capitalize}"
  end
  
  def self.all_with_total
    self.includes('transactions').group('Morts.id',:nom, :prenom, :date_de_deces).sum(:montant)
  end
end
