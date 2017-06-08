describe OffPiste do

  let(:piste) { FactoryGirl.create :piste }

  context '::search_name' do
    it { expect(OffPiste).to respond_to :search_name }

    it "should allow searching of an off-piste line by name" do
      expect(OffPiste.search_name("Crochues-Berard Traverse").piste_id).to eq(piste.piste_id)
    end

    it "should allow searching of an off-piste line by partial name" do
      expect(OffPiste.search_name("Crochues Berard").piste_id).to eq(piste.piste_id)
    end
  end

  context '::search_name_advanced' do
    FactoryGirl.create :piste
    FactoryGirl.create :piste2

    it { expect(OffPiste).to respond_to :search_name_advanced }

    it "should allow sorting of off-piste lines by descending ski_difficulty" do
      expect(OffPiste.search_name_advanced({ filter: "ski_difficulty", order: "desc" }).first.ski_difficulty).to eq(5)
    end

    it "should allow sorting of off-piste lines by ascending ski_difficulty" do
      expect(OffPiste.search_name_advanced({ filter: "ski_difficulty", order: "asc" }).first.ski_difficulty).to eq(2)
    end
  end

end