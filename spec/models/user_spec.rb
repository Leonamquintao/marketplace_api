# frozen_string_literal: true

require "rails_helper"

RSpec.describe User, type: :model do
  context "with valid factory" do
    it "has a valid factory" do
      expect(FactoryBot.build(:user)).to be_valid
    end

    it "has a valid factory with an email" do
      expect(FactoryBot.build(:user, email: "john.doe@mail.com")).to be_valid
    end

    it "has a valid factory with a first_name" do
      expect(FactoryBot.build(:user, first_name: "John")).to be_valid
    end

    it "has a valid factory with a last_name" do
      expect(FactoryBot.build(:user, last_name: "Doe")).to be_valid
    end
  end

  context "with validations" do
    it "is invalid without an email" do
      user = FactoryBot.build(:user, email: nil)
      expect(user).to_not be_valid
    end

    it "is invalid with duplicated email" do
      FactoryBot.create(:user, email: "john.doe@mail.com")
      duplicated_user = FactoryBot.build(:user, email: "john.doe@mail.com")

      expect(duplicated_user).to_not be_valid
      expect(duplicated_user.errors[:email]).to include("has already been taken")
    end
  end
end
