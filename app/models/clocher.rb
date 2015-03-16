class Clocher < ActiveRecord::Base
  has_many :transactions, ->{ where("date_effet between ? and ? and montant<=0", Time.now, Time.now + 1.month).order(date_effet: :asc)},  dependent: :destroy
  def to_s
    self.nom
  end
end
