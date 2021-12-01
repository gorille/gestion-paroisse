class Clocher < ApplicationRecord
  has_many :transactions, ->{ where("date_effet between ? and ? and montant<=0", Time.now, Time.now + 1.month).order(date_effet: :asc)},  dependent: :destroy
  has_many :morts
  
  def to_s
    self.nom
  end
end
