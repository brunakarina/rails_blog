require 'rails_helper'
require 'faker'

describe User, type: :model do
    describe "creation" do
        context "with valid attributes" do
           user = User.new
           user.email = Faker::Internet.email
           user.password = "test1234"
           it "should save without errors" do
               expect(user.save).to eq(true)
           end
        end

        context "with invalid attributes" do
            user = User.new
            it "should not save if the email and password is not present" do
                expect(user.save).to eq(false)
            end

            it "should not save if the email is not present" do
                user.password = "test1234"
                expect(user.save).to eq(false)
            end

            it "should not save if the password is not present" do
                user.email = Faker::Internet.email
                user.password = nil
                expect(user.save).to eq(false)
            end

            it "should not save if the email already exists" do
                User.create(email: "test.railsblog@email.com", password: "test1234")
                user.email = "test.railsblog@email.com"
                user.password = "test1234"
                expect(user.save).to eq(false)
            end
        end
    end
end