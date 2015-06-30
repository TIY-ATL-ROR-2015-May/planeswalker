class CardType < ActiveRecord::Base
  has_many :card_ofs
  has_many :cards, through: :card_ofs
end
