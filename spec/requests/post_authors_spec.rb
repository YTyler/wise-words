require 'rails_helper'

describe "post an author route", :type => :request do

  before do
    post '/authors', params: { :name => 'Vonnegut', :house => 'Ravenclaw', :flag => "🇲🇫", :ssn => '123-45-6789' }
  end


  it 'returns the author name' do
    expect(JSON.parse(response.body)['name']).to eq('Vonnegut')
  end

  it 'returns the house name' do
    expect(JSON.parse(response.body)['house']).to eq('Ravenclaw')
  end

  it 'returns the flag' do
    expect(JSON.parse(response.body)['flag']).to eq("🇲🇫")
  end

  it 'returns the SSN' do
    expect(JSON.parse(response.body)['ssn']).to eq('123-45-6789')
  end

end
