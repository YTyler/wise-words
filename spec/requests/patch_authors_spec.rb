require 'rails_helper'

describe "update an author route", :type => :request do

  before do
    post '/authors', params: {:name => 'Vonnegut', :house => 'Ravenclaw', :flag => "🇲🇫", :ssn => '123-45-6789' }
    id = JSON.parse(response.body)['id']
    put "/authors/#{id}", params: { :name => 'Kurt', :house => 'Gryffindor', :flag => "🇲🇫", :ssn => '123-45-6789' }
  end


  it 'updates the author successfully' do
    expect(JSON.parse(response.body)['message']).to eq('Author has been updated successfully.')
  end

end
