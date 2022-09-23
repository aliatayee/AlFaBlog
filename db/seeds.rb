# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

first_user = User.create(name: 'John Doe', photo: 'https://gravatar.com/avatar/b960dddd75d9d5477ef84da4d8c8a6e8?s=400&d=robohash&r=x', bio: '
    Lorem Ipsum is simply dummy text of the printing and typesetting industry.
         Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer
         took a galley of type and scrambled it to make a type specimen book.
         It has survived not only five centuries')
second_user = User.create(name: 'Maryam Safai', photo: 'https://gravatar.com/avatar/fee815fec3c300bd5874b026ef8d558e?s=400&d=robohash&r=x', bio: '
        Lorem Ipsum is simply dummy text of the printing and typesetting industry.
         Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer
         took a galley of type and scrambled it to make a type specimen book.
         It has survived not only five centuries')