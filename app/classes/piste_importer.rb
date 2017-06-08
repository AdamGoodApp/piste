class PisteImporter

  # Loop through off-pistes.json and store Piste into database
  def self.import!
    pistes = read_file

  end

  private

  # Read the off-pistes.json file and parse it into a Ruby object
  def self.read_file
    file = File.read Rails.root.join('lib', 'off-pistes.json')
    JSON.parse(file)
  end

end