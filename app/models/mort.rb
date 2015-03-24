class Mort < ActiveRecord::Base
  has_many :transactions
  belongs_to :clocher
  before_save :cap
  
  def to_s
    "#{self.nom} #{self.prenom}"
  end
  
  def self.all_with_total
    joins('LEFT OUTER JOIN transactions on morts.id=transactions.mort_id')
      .joins('LEFT OUTER JOIN clochers on morts.clocher_id=clochers.id')
      .select('morts.id, clochers.nom as nom_clocher, morts.nom, prenom, date_de_deces, sum(transactions.montant) as solde')
      .group('morts.id', :nom_clocher, 'clochers.nom','morts.nom', :prenom, :date_de_deces)
      .order(date_de_deces: :desc)
  end
  
  private
  # gere les maj min pour les noms prenoms
  def cap
    self.nom=self.nom.upcase
    self.prenom=self.prenom.capitalize
  end
end
