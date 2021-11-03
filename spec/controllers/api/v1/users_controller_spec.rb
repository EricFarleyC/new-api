exrequire 'rails_helper'

describe Api::V1::UsersController do
  # >> GET >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
  describe "GET #index" do
    subject (:http_request) { get :index }

    before{ create_list(:user, 3) }

    it do
      byebug
      expect(response_body.count).to eq(User.count)
    end

  end

  describe "GET #show" do
    subject (:http_request) { get :show, params: id }

    before { create_list(:user,3) }
    let(:id) { { id: User.last.id } }
  end
  
  # >> POST >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

  # >> PATCH/PUT >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

  # >> DELETE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
end
