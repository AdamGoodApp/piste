describe OffPiste do

  let(:piste) { FactoryGirl.create :piste }

  before(:each) do
    OffPiste.reindex
  end

  context '::search' do
    it { expect(OffPiste).to respond_to :elastic_search }

    it "should allow searching of an off-piste line by name" do
      expect(OffPiste.elastic_search("Crochues-Berard Traverse").first.piste_id).to eq(piste.piste_id)
    end
  end

end