describe OffPiste do

  let(:piste) { FactoryGirl.create :piste }

  context '::search_name' do
    it { expect(OffPiste).to respond_to :search_name }

    it "should allow searching of an off-piste line by name" do
      expect(OffPiste.search_name("Crochues-Berard Traverse").first.piste_id).to eq(piste.piste_id)
    end

    it "should allow searching of an off-piste line by partial name" do
      expect(OffPiste.search_name("Crochues Berard").first.piste_id).to eq(piste.piste_id)
    end
  end

  context '::search_name_advanced' do
    it { expect(OffPiste).to respond_to :search_name_advanced }

    it "should allow sorting of off-piste lines by ski_difficulty" do
      # expect(OffPiste.search_name_advanced("Crochues Berard"))
    end
  end

end