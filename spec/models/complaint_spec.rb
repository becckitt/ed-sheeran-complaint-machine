require "rails_helper"

RSpec.describe Complaint, :type => :model do
  before(:all) do
    @complaint1 = create(:complaint)
  end

  it "has a complaint body" do
    expect(@complaint1.body).to eq("I HATE this song and i CAN'T stop listening to it. Tricked by the red headed crooner ONCE again.")
  end

  it "has an associated song" do
    expect(@complaint1.song).to eq("Shape of You")
  end
end