require 'rails_helper'

describe Api::V1::UsersController do
  # >> GET >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
  describe "GET #index" do
    subject(:http_request) { get :index }

    before do
      create_list(:user, 3)
      http_request
    end

    it { expect(response_body.count).to eq(User.count) }
  end

  describe "GET #show" do
    subject(:http_request) { get :show, params: id }

    before do
      create_list(:user, 3)
      http_request
    end

    let(:id) { { id: User.last.id } }

    it { expect(response_body['attributes']['name']).to eq(User.find(id[:id]).name) }
  end

  # >> POST >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

  # >> PATCH/PUT >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

  # >> DELETE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
end
