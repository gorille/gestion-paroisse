class Transaction < ActiveRecord::Base
  belongs_to :mort
  belongs_to :donnateur
  belongs_to :clocher
end
