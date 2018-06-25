require 'rails_helper'

describe "songs controller spec", :type => :request do
  it 'check 3 songs from controller' do
    get '/song/html'
    expect(assigns[:songs].length).to eq(3)
  end
  it 'check songs is instance of Songs' do
    get '/song/html'
    expect(assigns[:songs].first.instance_of?(Songs)).to eq(true)
  end
end