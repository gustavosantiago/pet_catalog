require 'net/http'
require 'uri'
require 'faker'

190.times do
  dog_url = JSON.parse(Net::HTTP.get(URI.parse('https://some-random-api.ml/img/dog')))['link']
  cat_url = JSON.parse(Net::HTTP.get(URI.parse('https://some-random-api.ml/img/cat')))['link']
  birb_url = JSON.parse(Net::HTTP.get(URI.parse('https://some-random-api.ml/img/birb')))['link']

  Pet.create!([
    {
      name: Faker::Creature::Dog.name,
      breed: Faker::Creature::Dog.breed,
      description: Faker::Lorem.sentence,
      url: dog_url
    },

    {
      name: Faker::Creature::Cat.name,
      breed: Faker::Creature::Cat.breed,
      description: Faker::Lorem.sentence,
      url: cat_url
    },

    {
      name: Faker::Creature::Bird.common_name.humanize,
      breed: Faker::Creature::Bird.common_family_name,
      description: Faker::Lorem.sentence,
      url: birb_url
    }
  ])
end
