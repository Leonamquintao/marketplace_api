# frozen_string_literal: true

require "rails_helper"

RSpec.describe Api::V1::UsersController, type: :request do
  # pending "add some examples (or delete) #{__FILE__}"

  describe "GET /index" do
    let!(:users) { FactoryBot.create_list(:user, 10) }
    it "returns all users" do
      get "/users"

      expect(response).to have_http_status(:ok)
      expect(JSON.parse(response.body).size).to eq(10)
    end
  end

  describe "GET /show" do
    let(:user) { FactoryBot.create(:user) }

    it "returns a user" do
      get "/users/#{user.id}"

      expect(response).to have_http_status(:ok)
      expect(JSON.parse(response.body)["id"]).to eq(user.id)
    end
  end
end
