# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "cleaning db"
Instrument.destroy_all
User.destroy_all

puts "seeding db"

user = User.create!(email: "marcosa@gmail.com", password: "123456")

guitar = Instrument.new(name: "guitar", price: 30, location: "London, EC2A 3DH", brand: "Fender Stratocaster", user_id: user.id)
file = URI.open("https://th.bing.com/th/id/R.a3d542215bed2f55f7b570d8de169825?rik=JgKJDZHKZr4jjg&riu=http%3a%2f%2fdifferentdegrees.files.wordpress.com%2f2009%2f10%2fguitarra_electrica-92379.jpeg&ehk=ITAzn1rgFgdEfq46Hym9AgUxTBXJOcx44ad7%2fYk%2fKTk%3d&risl=&pid=ImgRaw&r=0")
guitar.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
guitar.save!

piano = Instrument.new(name: "piano", price: 42, location: "London EC1V 9LN", brand: "YAMAHA", image_url: "https://images.unsplash.com/photo-1520523839897-bd0b52f945a0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2970&q=80", user_id: user.id)
file = URI.open("https://images.unsplash.com/photo-1520523839897-bd0b52f945a0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2970&q=80")
piano.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
piano.save!

drums = Instrument.new(name: "drums", price: 31, location: "London EC2A 3HJ", brand: "Roland", image_url: "https://images.unsplash.com/photo-1543443258-92b04ad5ec6b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2970&q=80", user_id: user.id)
file = URI.open("https://images.unsplash.com/photo-1543443258-92b04ad5ec6b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2970&q=80")
drums.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
drums.save!

trumpet = Instrument.new(name: "trumpet", price: 37, location: "London E2 7NF", brand: "Fender Stratocaster", image_url: "hhttps://images.unsplash.com/photo-1573871666457-7c7329118cf9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2970&q=80", user_id: user.id)
file = URI.open("https://images.unsplash.com/photo-1573871666457-7c7329118cf9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2970&q=80")
trumpet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
trumpet.save!

violin = Instrument.new(name: "violin", price: 35, location: "London E2 7AE", brand: "Fender Stratocaster", image_url: "https://media.istockphoto.com/id/134093223/photo/violin.jpg?s=612x612&w=0&k=20&c=Az3VE1BRXqF10shAlhy71BGlwMqHylFfEeMT1NObfiU=", user_id: user.id)
file = URI.open("https://media.istockphoto.com/id/134093223/photo/violin.jpg?s=612x612&w=0&k=20&c=Az3VE1BRXqF10shAlhy71BGlwMqHylFfEeMT1NObfiU=")
violin.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
violin.save!
