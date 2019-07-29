# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |i|
    user = User.create(signin_name: "user#{i}",
    display_name: "User #{i}",
    password: "password",
    password_confirmation: "password")
    user.posts.create(title: "title #{i}", body: "body #{i}")
end

3.times do |i|
    Post.find(1).comments.create(body: "body #{i}")
end