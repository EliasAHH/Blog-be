# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
john = Author.create(name:"John")
juan = Author.create(name:"Juan")
elias = Author.create(name:"Elias")


Post.create(title:"Something", content:"somethingElse", author_id:john.id)
Post.create(title:"Hello", content:"FuggetABoutIT", author_id:juan.id)
Post.create(title:"Mylife", content:"Why am I here", author_id:elias.id)
Post.create(title:"This is", content:"The story of a girl", author_id:john.id)
Post.create(title:"Who Cried a River", content:"And drowned the whole world", author_id:juan.id)
Post.create(title:"And while she looks so sad in photographs", content:"I absolutely love her", author_id:elias.id)
Post.create(title:"When she", content:" smiles", author_id:john.id)
