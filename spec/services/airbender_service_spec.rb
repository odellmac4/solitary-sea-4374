require 'rails_helper'

RSpec.describe AirbenderService, :vcr do
  before(:each) do
    @service = AirbenderService.new
  end

  it 'establishes a connection' do
    expect(@service.conn).to be_a Faraday::Connection
  end

  it 'returns members of a nation' do
    members = @service.members("fire nation")
    expect(members).to be_an Array

    member = members.first
    expect(member).to be_a Hash

    expect(member).to have_key :_id
    expect(member[:_id]).to be_a String
    
    expect(member).to have_key :allies
    expect(member[:allies]).to be_an Array
    
    expect(member).to have_key :enemies
    expect(member[:enemies]).to be_an Array
    
    expect(member).to have_key :name
    expect(member[:name]).to be_a String
    
    expect(member).to have_key :affiliation
    expect(member[:affiliation]).to be_a String
  end
end