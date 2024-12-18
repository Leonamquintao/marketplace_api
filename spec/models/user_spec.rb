# frozen_string_literal: true

require "rails_helper"

RSpec.describe User, type: :model do
  context "with valid factory" do
    it "has a valid factory" do
      expect(FactoryBot.build(:user)).to be_valid
    end
  end

  context "with validations" do
    it "is invalid without an email" do
      user = FactoryBot.build(:user, email: nil)
      expect(user).to_not be_valid
    end
  end
end
