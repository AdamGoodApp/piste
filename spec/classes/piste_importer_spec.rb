describe PisteImporter do

  describe 'self.import!' do
    it { expect(PisteImporter).to respond_to :import! }
  end

  describe 'self.read_file' do
    it { expect(PisteImporter).to respond_to :read_file }

    it "should return an array including pistes" do
      expect(PisteImporter.read_file).to include(a_kind_of(Hash))
    end

  end

end
