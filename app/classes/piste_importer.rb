class PisteImporter

  # Loop through off-pistes.json and store Piste into database
  # Use bulk insert to speed up storing records and avoid N+1 queries
  def self.import!
    pistes_to_import = read_file.map do |p|
     {
        piste_id: p["id"],
        name: p["name"],
        description: p["description"],
        ski_difficulty: p["ski_difficulty"],
        geo_data: p["geo_data"]
     }
    end

    OffPiste.create(pistes_to_import)
  end

  private

  # Read the off-pistes.json file and parse it into a Ruby object
  def self.read_file
    file = File.read Rails.root.join('lib', 'off-pistes.json')

    JSON.parse(file)
  end

end