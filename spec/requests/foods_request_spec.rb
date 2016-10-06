require 'rails_helper'

RSpec.describe 'GET /foods' do
  let(:result) do
    "[{\"id\":1,\"name\":\"brownie\",\"description\":\"delicious brownie\",\"price\":\"5.5\"},"\
     "{\"id\":2,\"name\":\"brownie\",\"description\":\"delicious brownie\",\"price\":\"5.5\"}]"
  end

  let(:create_foods) do
    create(:food)
    create(:food)
  end

  context 'when has 2 foods in the menu' do
    before do
      create_foods
      get '/foods'
    end

    subject { response.body }

    it { is_expected.to eq result }
  end
end