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

user = User.create(email: "marcos@gmail.com", password: "123456")
Instrument.create(name: "guitar", price: 30, location: "7-8 Charlotte Rd, London EC2A 3DH", brand: "Fender Stratocaster", image_url: "https://th.bing.com/th/id/R.a3d542215bed2f55f7b570d8de169825?rik=JgKJDZHKZr4jjg&riu=http%3a%2f%2fdifferentdegrees.files.wordpress.com%2f2009%2f10%2fguitarra_electrica-92379.jpeg&ehk=ITAzn1rgFgdEfq46Hym9AgUxTBXJOcx44ad7%2fYk%2fKTk%3d&risl=&pid=ImgRaw&r=0", user_id: user.id)
Instrument.create(name: "piano", price: 42, location: "275 Old St, London EC1V 9LN", brand: "YAMAHA", image_url: "https://th.bing.com/th/id/R.c66aa897df218251a650f4c8b2515875?rik=MRoXm9hQA2UuQQ&pid=ImgRaw&r=0", user_id: user.id)
Instrument.create(name: "drums", price: 31, location: "6 Dereham Pl, London EC2A 3HJ", brand: "Roland", image_url: "https://th.bing.com/th/id/OIP.Mmq3VEDmXlM7vY5XvocyMwHaFP?pid=ImgDet&rs=1user_id", user_id: user.id)
Instrument.create(name: "trumpet", price: 37, location: "19 Virginia Rd, London E2 7NF", brand: "Fender Stratocaster", image_url: "https://img.tttcdn.com/product/xy/2000/2000/p/gu1/I/1/I6251/I6251-1-c2cb-LLar.jpg", user_id: user.id)
Instrument.create(name: "violin", price: 35, location: "Spear Bethnal Green St Peters Church, St Peter's Cl, London E2 7AE", brand: "Fender Stratocaster", image_url: "https://th.bing.com/th/id/OIP.1gYkO10lkI0mJ9WQVLBnZwHaJ4?pid=ImgDet&rs=1", user_id: user.id)
