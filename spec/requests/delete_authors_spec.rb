require 'rails_helper'

describe "delete an author route", :type => :request do

  before do
    post '/authors', params: {:name => 'Vonnegut', :house => 'Ravenclaw', :flag => "🇲🇫", :ssn => '123-45-6789' }
    id = JSON.parse(response.body)['id']
    delete "/authors/#{id}"
  end


  it 'deletes the author successfully' do
    expect(JSON.parse(response.body)['message']).to eq("Author has been deleted successfully.")
  end



end
