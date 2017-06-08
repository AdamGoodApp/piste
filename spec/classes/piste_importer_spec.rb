describe PisteImporter do

  pistes_json = JSON.parse File.read Rails.root.join('lib', 'off-pistes.json')
  let(:piste) { pistes_json.last }

  describe 'self.import!' do
    it { expect(PisteImporter).to respond_to :import! }

    it "should insert pistes into database" do
      expect(Piste.last.piste_id).to eq(piste{"id"})
    end

  end

  describe 'self.read_file' do
    it { expect(PisteImporter).to respond_to :read_file }

    it "should return an array including pistes" do
      expect(PisteImporter.read_file).to include(a_kind_of(Hash))
    end

  end

end
