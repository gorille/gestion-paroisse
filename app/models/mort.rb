class Mort < ActiveRecord::Base
  has_many :transactions
  before_save :cap
  
  def to_s
    "#{self.nom} #{self.prenom}"
  end
  
  def self.all_with_total
    joins('LEFT OUTER JOIN transactions on morts.id=transactions.mort_id')
      .select('morts.id, nom, prenom, date_de_deces, sum(transactions.montant) as solde')
      .group('morts.id', :nom, :prenom, :date_de_deces)
      .order(date_de_deces: :desc)
  end
  
  private
  # gere les maj min pour les noms prenoms
  def cap
    self.nom=self.nom.upcase
    self.prenom=self.prenom.capitalize
  end
end
