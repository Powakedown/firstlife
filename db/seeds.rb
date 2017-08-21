# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Tree.destroy_all
Skill.destroy_all
Category.destroy_all

User.create(email: "doodlid@yahoo.fr", password: "123456", address: "Bordeaux")
User.create(email: "etienne.ziegelmeyer@yahoo.fr", password: "123456", address: "Colmart")

Category.create(name: "Développement Web")
Category.create(name: "Graphisme")
Category.create(name: "Artisanat")
Category.create(name: "Spectacle")
Category.create(name: "Design")
Category.create(name: "Informatique d'entreprise")
Category.create(name: "Développement personnel")
Category.create(name: "Éducation")
Category.create(name: "Tourisme")
Category.create(name: "Écologie")



tree = Tree.create(
  name: "Développeur Ruby",
  user_id: User.first.id,
  categorie_id: Category.first.id
  )
  url = "https://res.cloudinary.com/drua6zxss/image/upload/v1502884951/doll7_yh8aex_cr8dte.jpg"
  tree.photo_url = url


tree = Tree.create(
  name: "Adepte écologie",
  user_id: User.last.id,
  categorie_id: Category.last.id
  )
  url = "https://res.cloudinary.com/drua6zxss/image/upload/v1502884951/doll7_yh8aex_cr8dte.jpg"
  tree.photo_url = url


tree = Tree.create(
  name: "UX design",
  user_id: User.first.id,
  categorie_id: Category.find(5)
  )
  url = "https://res.cloudinary.com/drua6zxss/image/upload/v1502884951/doll7_yh8aex_cr8dte.jpg"
  tree.photo_url = url


tree = Tree.create(
  name: "Développeur Ruby",
  user_id: User.first.id,
  categorie_id: Category.find(8)
  )
  url = "https://res.cloudinary.com/drua6zxss/image/upload/v1502884951/doll7_yh8aex_cr8dte.jpg"
  tree.photo_url = url

skills_ruby = ["Command line basics", "Variables and assigments", "Build-in objects", "Controlling the flow", "Enumerables", "Array", "Methods", "Iteration", ]

15.times do

skill = Skill.create(
  title: "Command line basics",
  tree_id: 1,
  level: true,
  )
skill = Skill.create(
  title: "Variables and assigment",
  tree_id: 1,
  level: true,
  )
skill = Skill.create(
  title: "Build-in objects",
  tree_id: 1,
  level: true,
  )
skill = Skill.create(
  title: "Controlling the flow",
  tree_id: 1,
  level: true,
  )
skill = Skill.create(
  title: "Enumerables",
  tree_id: 1,
  level: true,
  )
skill = Skill.create(
  title: "Array",
  tree_id: 1,
  level: true,
  )
skill = Skill.create(
  title: "Methods",
  tree_id: 1,
  level: true,
  )
skill = Skill.create(
  title: "Iteration",
  tree_id: 1,
  level: true,
  )
skill = Skill.create(
  title: "Defining method",
  tree_id: 1,
  level: true,
  )
skill = Skill.create(
  title: "Blocks",
  tree_id: 1,
  level: true,
  )
skill = Skill.create(
  title: "Command line basics",
  tree_id: 1,
  level: true,
  )
skill = Skill.create(
  title: "Command line basics",
  tree_id: 1,
  level: true,
  )
skill = Skill.create(
  title: "Command line basics",
  tree_id: 1,
  level: true,
  )
skill = Skill.create(
  title: "Command line basics",
  tree_id: 1,
  level: true,
  )
skill = Skill.create(
  title: "Command line basics",
  tree_id: 1,
  level: true,
  )
skill = Skill.create(
  title: "Command line basics",
  tree_id: 1,
  level: true,
  )
skill = Skill.create(
  title: "Command line basics",
  tree_id: 1,
  level: true,
  )
skill = Skill.create(
  title: "Command line basics",
  tree_id: 1,
  level: true,
  )
skill = Skill.create(
  title: "Command line basics",
  tree_id: 1,
  level: true,
  )
skill = Skill.create(
  title: "Command line basics",
  tree_id: 1,
  level: true,
  )
skill = Skill.create(
  title: "Command line basics",
  tree_id: 1,
  level: true,
  )
skill = Skill.create(
  title: "Command line basics",
  tree_id: 1,
  level: true,
  )
