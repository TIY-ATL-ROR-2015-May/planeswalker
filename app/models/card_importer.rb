class CardImporter
  def run!(file_path)
    @json = JSON.parse(File.read(file_path))
    @edition = Edition.create!(name: @json['name'],
                               shortcode: @json['code'],
                               infocode: @json['magicCardsInfoCode'],
                               released_on: Date.parse(@json['releaseDate']),
                               edition_type: @json['type'])

    @json['cards'].each do |card_json|
      self.add_card!(card_json)
      logger.info "Added card: #{@edition.name}: #{card.name}"
    end
  end

  def add_card!(card_json)
    card = @edition.cards.create!(name: card['name'],
                                  rarity: card['rarity'],
                                  artist: card['artist'],
                                  text: card['text'],
                                  flavor: card['flavor'],
                                  power: card['power'],
                                  toughness: card['toughness'],
                                  mana_cost: card['mana_cost'],
                                  converted: card['cmc'])
    color_models = card['colors'].map { |c| Color.find_or_create_by!(name: c) }
    type_models = card['types'].map { |t| CardType.find_or_create_by!(name: t) }
    card.colors = color_models
    card.card_ofs = type_models
  end
end
