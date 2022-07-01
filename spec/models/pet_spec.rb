require 'rails_helper'

RSpec.describe Pet, type: :model do
  describe "presence" do
    it "should validate name" do 
        pet = Pet.create age: 2, enjoys: "eating",image: 'https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80'
    expect(pet.errors[:name]).to_not be_empty

    end
    it "should validate age" do 
      pet = Pet.create name: "charlie", enjoys: "eating",image: 'https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80'
    expect(pet.errors[:age]).to_not be_empty

  end
  it "should validate enjoys" do 
    pet = Pet.create name: "charlie", age: 2, image: 'https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80'
  expect(pet.errors[:enjoys]).to_not be_empty
  end
  it "should validate an image" do 
    pet = Pet.create name: "charlie", age: 2, enjoys: 'eating'
  expect(pet.errors[:image]).to_not be_empty
  end
end
  
  describe 'minumun length' do
    it " will validate a minumun length of 10" do 
      pet = Pet.create name: "charlie", age: 2, enjoys: "eating", image: 'https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80'
    expect(pet.errors[:enjoys]).to_not be_empty
    end

  end

end
