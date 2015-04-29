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
      .select('morts.id, clochers.nom as nom_clocher, morts.nom, prenom, date_de_deces, sum(transactions.montant) as solde, planification_libre')
      .group('morts.id', :nom_clocher, 'clochers.nom','morts.nom', :prenom, :date_de_deces, :planification_libre)
      .order('nom'=> :asc)
  end
  
  def self.top_oldest(nb)
    joins('LEFT OUTER JOIN transactions on morts.id=transactions.mort_id')
      .select('morts.id, morts.nom, prenom, date_de_deces, sum(transactions.montant) as solde, max(transactions.date_effet) as derniere_transaction, planification_libre')
      .group('morts.id', 'morts.nom', :prenom, :date_de_deces, :planification_libre)
      .having("max(transactions.date_effet)< ?",  Time.now - 2.month)
      .order('sum(transactions.montant) desc' )
      .first(nb)
  end
  
  def self.top_10_libre
    joins('LEFT OUTER JOIN transactions on morts.id=transactions.mort_id')
      .select('morts.id, morts.nom, prenom, date_de_deces, sum(transactions.montant) as solde, max(transactions.date_effet) as derniere_transaction, planification_libre')
      .group('morts.id', 'morts.nom', :prenom, :date_de_deces, :planification_libre)
      .where(planification_libre: true)
      .order('sum(transactions.montant) desc' )
      .first(10)
  end
  
  private
  # gere les maj min pour les noms prenoms
  def cap
    self.nom=self.nom.upcase
    self.prenom=self.prenom.capitalize
  end
end
