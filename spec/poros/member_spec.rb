require 'rails_helper'

RSpec.describe Member do
  before(:each) do
    @member = Member.new(TestData.member_data)
  end

  it 'has attributes' do
    expect(@member).to be_a Member
    expect(@member.name).to eq "Azula"
    expect(@member.allies).to eq ["Ozai", "Zuko "].to_sentence
    expect(@member.enemies).to eq ["Iroh", "Zuko", "Kuei", "Long Feng", "Mai", "Ty Lee", "Ursa "].to_sentence
    expect(@member.id).to eq "5cf5679a915ecad153ab68da"
    expect(@member.affiliation).to eq " Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)"
  end
end