require 'rails_helper'

describe FoodsController do
  describe '.index' do
    before do
      allow(Food).to receive(:all) { Food.new }
      get :index
    end

    subject { response }

    it { is_expected.to have_http_status(:success)}
  end
end
