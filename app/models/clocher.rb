class Clocher < ActiveRecord::Base
  def to_s
    self.nom
  end
end
