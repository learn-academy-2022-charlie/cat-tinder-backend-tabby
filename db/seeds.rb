# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

 pets = [
    {
        name: 'Nugget',
        age: 6,
        enjoys: 'Long naps and eating.',
        image: 'https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80'
      },
      {
      name: 'Echo',
      age: 4,
      enjoys: 'Chasing lizards.',
      image: 'https://www.rawpixel.com/search/pitbull'
    },
    {
        name: 'Maple',
        age: 1,
        enjoys: 'Running on the wheel.',
        image: 'https://pixnio.com/fauna-animals/rats-mice-and-voles-pictures/hamster-pet-animal-fur'
      }

]

pets.each do |each_pet|
    Pet.create each_pet
    puts "creating a pet #{each_pet}"
  end