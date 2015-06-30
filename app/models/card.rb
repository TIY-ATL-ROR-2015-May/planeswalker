class Card < ActiveRecord::Base
  belongs_to :edition

  has_many :card_colors
  has_many :colors, through: :card_colors
  has_many :card_ofs
  has_many :card_types, through: :card_ofs

end
