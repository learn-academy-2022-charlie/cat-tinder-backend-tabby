require 'rails_helper'

RSpec.describe "Pets", type: :request do
  describe "GET /index" do
    it "gets a list of pets" do
      Pet.create(
        name: 'Charlie',
        age: 2,
        enjoys: 'Walks in the park',
        image: 'https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80'
      )
      get '/pets'

      pet = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(pet.length).to eq 1
    end

  end
  describe "POST/create" do
    it "create a new pet" do
      pet_params = {
        pet: {
        name: 'Charlie',
        age: 2,
        enjoys: 'Walks in the park',
        image: 'https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80'
    }
  }
      post '/pets', params: pet_params

      expect(response).to have_http_status(200)
     pet = Pet.first
     expect(pet.name).to eq 'Charlie'
     expect(pet.age).to eq 2
     expect(pet.enjoys).to eq 'Walks in the park'
     expect(pet.image).to eq 'https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80'

    end

  end

end
