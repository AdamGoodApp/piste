describe Api::V1::PistesController do

  let(:piste_params) {{ name: "Crochues-Berard Traverse", field: "ski_difficulty", order: "asc", filter: "gt", filter_number: 3}}

  context '.search_name' do
    it "returns a piste" do
      post :search_name, params: { piste: piste_params }
      expect(response).to be_success
      expect(json["result"]["name"]).to eq(piste_params[:name])
    end
  end

end