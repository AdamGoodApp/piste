describe Api::V1::PistesController do

  let(:piste_params) {{ name: "Crochues-Berard Traverse", field: "ski_difficulty", order: "asc", filter: "gt", filter_number: 3}}

  context '.search_name' do
    it "returns a piste" do
      post :search_name, params: { piste: piste_params }
      expect(response).to be_success
      expect(json["result"]["name"]).to eq(piste_params[:name])
    end
  end

  context '.search_advanced' do
    it "returns a piste filtered and ordered by ski difficulty" do
      post :search_advanced, params: { piste: piste_params }
      expect(response).to be_success
      expect(json["result"]).to be_a(Array)
      expect(json["result"][0]["ski_difficulty"]).to be > piste_params[:filter_number]
    end
  end

end