class ImportCardsJob < ActiveJob::Base
  queue_as :default

  def perform(upload)
    importer = CardImporter.new
    begin
      importer.run!(upload)
    rescue StandardError => e
      binding.pry
    end
  end
end
