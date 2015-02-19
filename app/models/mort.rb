class Mort < ActiveRecord::Base
  def to_s
    "#{self.nom.upcase} #{self.prenom.capitalize}"
  end
end
