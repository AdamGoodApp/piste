namespace :pistes do
  desc "Read off-pistes.json and insert each into database"
  task import: :environment do
    PisteImporter.import!
  end
end
