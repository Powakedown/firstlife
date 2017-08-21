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


categories = ["Développement Web", "Graphisme", "Famille", "Spectacle","Artisanat","Design","Informatique d'entreprise","Développement personnel", "Éducation","Tourisme","Écologie"]

categories.each do |category|
  Category.create(name: category)
end

puts "#{Category.count} category created."

tree = Tree.create(
  name: "Développeur Ruby",
  category_id: Category.first.id
  )
  url = "http://res.cloudinary.com/doodlid/image/upload/v1503340773/Tree_dev_ug2xlz.png"
  tree.photo_url = url


tree = Tree.create(
  name: "Adepte écologie",
  category_id: Category.last.id
  )
  url = "http://res.cloudinary.com/doodlid/image/upload/v1503340773/Tree_ecology_sua5up.png"
  tree.photo_url = url


tree = Tree.create(
  name: "UX design",
  category_id: Category.find(5)
  )
  url = "http://res.cloudinary.com/doodlid/image/upload/v1503340773/Tree_ux_hrhfl3.png"
  tree.photo_url = url


tree = Tree.create(
  name: "Litterature française",
  category_id: Category.find(8)
  )
  url = "http://res.cloudinary.com/doodlid/image/upload/v1503340773/Tree_reader_mtpdtq.png"
  tree.photo_url = url

tree = Tree.create(
  name: "Chef en cuisine",
  category_id: Category.find(3)
  )
  url = "http://res.cloudinary.com/doodlid/image/upload/v1503340773/Tree_chief_fsm7te.png"
  tree.photo_url = url

puts "#{Tree.count} trees created."


skills_ruby = ["Command line basics",
  "Build-in objects",
  "Variables and assignement",
  "Methods",
  "Enumerables",
  "Array",
  "Defining method",
  "Blocks",
  "Array vs Hash",
  "Data format",
  "Hash and Symbols",
  "Regex Regex in ruby",
  "Parsing: Read data",
  "Storing: Write data",
  "Class & Instances",
  "Interface Setting",
  "Accessing state",
  "Build a seed",
  "Inheritance",
  "Self",
  "Class method",
  "Method missing",
  "Overrinding Methods",
  "Ruby Open Classes",
  "Ruby Procs",
  "Duck typing",
  "Ruby overloading",
  "Methods Exceptions",
  "Object Serialization",
  "Mutable and immutable Objects",
  "Ruby synactic",
  "Sugar Modules/Mixins"]

skills_ruby.each do |skill|
  skill = Skill.create(
  title: skill,
  tree_id: 1,
  level: false,
  )
end

puts "#{Skill.count} ruby skills created."
rubyskill = Skill.count


skills_ecology = [
  "Faire pipi dans la douche",
  "Installer des ampoules à économies d'énergie",
  "Emmener un sac durable pour faire les courses",
  "Installer un autocollant Stop Pub",
  "Refuser les cadeaux jetables",
  "Refuser les borchures",
  "Refuser les sacs plastiques",
  "Ne plus acheter de vaisselle jetable",
  "Ne pas acheter de coton tige",
  "Trier le verre",
  "Trier les emballages",
  "Trier les piles",
  "Utiliser du vinaigre blanc pour le ménage",
  "Apprendre à se servir d’une vantouse",
  "Je met une bouteille dans ma chasse d’eau",
  "Ne pas acheter de l’eau en bouteille",
  "Réduire les laitages",
  "Faire la cuisine plutôt qu’acheter tout fait",
  "Découper les pommes pour les faire cuire",
  "Manger moins de viande",
  "Éviter les fruits et légumes hors saison",
  "Savoir lire les étiquettes",
  "Connaître les logos du recyclage",
  "Acheter bio dés que possible",
  "Comprendre d’où vient l’oxygène",
  "Savoir ce qu’est la décroissance",
  "Comprendre la montée du niveau de la mer",
  "Trier les ampoules",
  "Trier les papiers",
  "Trier les bouchons",
  "Découvrir son pays plutôt que les pays lointains",
  "Faire son compost",
  "Apprendre le microbiome",
  "S’inscrire dans une amap",
  "Utiliser des toilettes sèches",
  "S’inscrire à un fournisseur d’énergie 100% renouvelable",
  "Choisir une banque éthique",
  "Privilégier les transports en commun",
  "Faire un minimum de trajet en voiture",
  "Chauffer à 19°C max par temps froid",
  "Installer un minuteur pour la douche",
  "Acheter du bio local",
  "Arrêter de boire du lait",
  "Acheter les vêtements d’occasion",
  "Acheter des objets résistants",
  "Acheter durables et d’occasion",
  "Ne jamais utiliser la climatisation",
  "Manger moins",
  "Utiliser une monnaie locale",
  "Acheter en vrac Utiliser",
  "Utiliser le covoiturage",
  "Offrir des cadeaux de Noël d’occasion",
  "Utiliser des couches lavables",
  "Apprendre le zéro déchet",
  "Ralentir"]


skills_ecology.each do |skill|
  skill = Skill.create(
  title: skill,
  tree_id: 2,
  level: false,
  )
end

# puts "#{Skill.count - rubyskill} ecology skills created."

