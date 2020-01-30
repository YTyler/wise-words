require 'rails_helper'

describe "get all authors route", :type => :request do
  let!(:authors) { FactoryBot.create_list(:author, 20)}

  before { get '/authors' }

  it 'return all authors' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
  
end
