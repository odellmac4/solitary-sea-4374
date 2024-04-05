require 'rails_helper'

RSpec.describe AirbenderFacade, :vcr do
  before(:each) do
    @facade = AirbenderFacade.new("fire nation")
  end

  it 'exists' do
    expect(@facade).to be_a AirbenderFacade
  end

  it '#nation_members' do
    expect(@facade.nation_members.first).to be_a Member
  end

  it '#nation_member_count' do
    expect(@facade.nation_member_count).to be_a Integer
  end
end