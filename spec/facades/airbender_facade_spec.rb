require 'rails_helper'

RSpec.describe AirbenderFacade do
  before(:each) do
    @facade = AirbenderFacade.new("fire nation")
  end

  it 'exists' do
    expect(@facade).to be_a AirbenderFacade
  end
end