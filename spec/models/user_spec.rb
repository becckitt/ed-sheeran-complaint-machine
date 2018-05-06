require "rails_helper"

RSpec.describe User, :type => :model do
  before(:all) do
    @user1 = create(:user)
  end

  it "has an email" do
    expect(@user1.email).to eq("joe10@gmail.com")
  end

  it "has a sick password" do
    expect(@user1.password_digest).to eq("notpassword")
  end
end