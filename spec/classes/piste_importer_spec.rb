describe PisteImporter do

  pistes_json = JSON.parse File.read Rails.root.join('lib', 'off-pistes.json')
  let(:piste) { pistes_json.last }

  describe 'self.import!' do
    it { expect(PisteImporter).to respond_to :import! }

    #TODO: Create import task to insert off-pistes into test database
  end

  describe 'self.read_file' do
    it { expect(PisteImporter).to respond_to :read_file }

    it "should return an array including pistes" do
      expect(PisteImporter.read_file).to include(a_kind_of(Hash))
    end
  end

end
