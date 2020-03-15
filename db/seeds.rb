# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#

Quality.create([{quality: "HD"}, {quality: "SD"}])

Movie.create([
  { title: '300: Rise of an Empire', plot: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Hac habitasse platea dictumst quisque sagittis purus sit amet.' },
  { title: 'Lord of the Rings', plot: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Enim diam vulputate ut pharetra sit amet.' },
  { title: '1917', plot: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Hac habitasse platea dictumst quisque sagittis purus sit amet.' },
  { title: 'Jojo Rabbit', plot: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Enim diam vulputate ut pharetra sit amet.' },
  { title: 'Mil maneras de morder el polvo en el oeste', plot: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Hac habitasse platea dictumst quisque sagittis purus sit amet.' },
  { title: 'Joker', plot: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Enim diam vulputate ut pharetra sit amet.' },
])
Season.create([
  { title: 'The Frankenstein Chronicles', plot: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Hac habitasse platea dictumst quisque sagittis purus sit amet.' },
  { title: 'Cloak & Dagger', plot: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Enim diam vulputate ut pharetra sit amet.' },
  { title: 'Peaky Blinders', plot: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Hac habitasse platea dictumst quisque sagittis purus sit amet.' },
  { title: 'Black Sails', plot: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Enim diam vulputate ut pharetra sit amet.' },
  { title: 'The Pacific', plot: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Hac habitasse platea dictumst quisque sagittis purus sit amet.' },
  { title: 'Vikings', plot: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Enim diam vulputate ut pharetra sit amet.' },
])


User.create([{email: "common_user@moviem.com"}, {email: "common_user2@moviem.com"}])

#   Character.create(name: 'Luke', movie: movies.first)

Movie.all.each do |movie|
  movie.options.create([{price: 2.99, quality_id: Quality.first.id},{price: 2.99, quality_id: Quality.last.id}])
end

Season.all.each do |season|
  season.options.create([{price: 2.99, quality_id: Quality.first.id},{price: 2.99, quality_id: Quality.last.id}])
  season.episodes.create([
    {title: "episode 1", plot: "lorem...", number: 1},
    {title: "episode 2", plot: "ipsum...", number: 2},
    {title: "episode 3", plot: "dolor...", number: 3},
    {title: "episode 4", plot: "sit...", number: 4},
    {title: "episode 5", plot: "amet...", number: 5}
    ])
end
