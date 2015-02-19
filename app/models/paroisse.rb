class Paroisse < ActiveRecord::Base
  def to_s
    self.nom
  end
end
