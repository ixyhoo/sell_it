require 'rails_helper'

RSpec.describe "Classifieds", type: :request do
 describe 'get/classifieds/:id' do
  let(:classified) { FactoryBot.create :classified }

  before { get "/classifieds/#{classified.id}"}
  
  it "works" do 
    classified = FactoryBot.create :classified
    expect(response).to be_successful

  end
  it "is correctly serialized" do 
    parsed_body = JSON.parse(response.body)

    expect(parsed_body["id"]).to eq classified.id 
    expect(parsed_body["title"]).to eq classified.title 
    expect(parsed_body["price"]).to eq classified.price 
    expect(parsed_body["description"]).to eq classified.description
  end
 end
end
