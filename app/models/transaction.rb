class Transaction < ApplicationRecord
  belongs_to :mort, ->{ order(nom: :asc)}
  belongs_to :donnateur, ->{ order(nom: :asc)}
  belongs_to :clocher
  validates :mort, presence: true
end
