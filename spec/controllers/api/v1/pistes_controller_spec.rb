describe Api::V1::PistesController do

  context '.search_name' do
    it "returns a piste" do
      get :search_name
      expect(response).to be_success
      # expect(json["toolpaths"]).not_to be_empty
    end
  end

end