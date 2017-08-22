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
  url = "http://res.cloudinary.com/doodlid/image/upload/v1503346777/ebs0fhzbikdzvmb5ddon.png"
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


ruby = Skill.create(name: "Ruby", tree_id: 1, description: "Ruby is a general purpose language that is still popular and in high demand in the marketplace, as it's more commonly used in Rails applications. Concise and readable, it is easy to pick up but also plenty powerful. Companies like Twitter, Soundcloud, Goodreads, and Kickstarter got their products off the ground with Ruby.")
  rubyprimer = ruby.children.create(name: "Ruby Primer", tree_id: 1, description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
    string = rubyprimer.children.create(name: "introduction string", tree_id: 1,description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
    control = rubyprimer.children.create(name: "Condition Loop", tree_id: 1,description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
    array = rubyprimer.children.create(name: "Array", tree_id: 1,description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
    hashes = rubyprimer.children.create(name: "Hashes",tree_id: 1, description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
    object = rubyprimer.children.create(name: "Classes and Object Oriented ",tree_id: 1, description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
  rubyascent = ruby.children.create(name: "Ruby Primer Ascent",tree_id: 1, description: "<p><strong>Experience the next level.</strong> You've mastered the Ruby Primer. Now it's time to master more advanced Ruby skills!</p>")
    blocks = rubyascent.children.create(name: "Blocks",tree_id: 1, description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
    inheritance = rubyascent.children.create(name: "Classes: Inheritance",tree_id: 1, description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
    classes = rubyascent.children.create(name: "More Classes", tree_id: 1,description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
    advarray = rubyascent.children.create(name: "Advanced Arrays",tree_id: 1, description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
    modules = rubyascent.children.create(name: "Advanced Modules", tree_id: 1,description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
  metaprogramming = ruby.children.create(name: "Metaprogramming Ruby",tree_id: 1,description: "<p><strong>Code that writes code.</strong> Add more powerful abstractions and reduce duplication through Ruby that writes Ruby!</p>")
    meta = metaprogramming.children.create(name: "Ruby Primer Ascent",tree_id: 1, description: "<p><strong>Experience the next level.</strong> You've mastered the Ruby Primer. Now it's time to master more advanced Ruby skills!</p>")
    dynamic = metaprogramming.children.create(name: "Dynamic Methods",tree_id: 1, description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
    inspection = metaprogramming.children.create(name: "Code Inspection",tree_id: 1, description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
    evaluation = metaprogramming.children.create(name: "Eval and friends", tree_id: 1,description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
    cycle = metaprogramming.children.create(name: "Lifecycle Hooks",tree_id: 1, description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
    finished = metaprogramming.children.create(name: "Real World",tree_id: 1, description: "<p>Experience dynamic power. You've learned the basics of writing code with code in Metaprogramming Ruby. Now take it to the next level with eval, object lifecycle hooks, and more!</p>")

puts "#{Skill.count} ruby skills created."

rubyskill = Skill.count


ecology = Skill.create(name: "Écologie", tree_id: 2,  description: "L'écologie, également connue sous les noms de bioécologie, bionomie ou science de l'environnement ou environnementale, est la science qui étudie les êtres vivants dans leur milieu et les interactions entre eux.")

pipi = ecology.children.create(name: "Faire pipi dans la douche", tree_id: 2, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
ampoule = pipi.children.create(name: "Installer des ampoules à économies d'énergie",tree_id: 2, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
course = pipi.children.create(name: "Emmener un sac durable pour faire les courses",tree_id: 2, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
pub = pipi.children.create(name: "Installer un autocollant Stop Pub",tree_id: 2, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
cadeaux = pipi.children.create(name: "Refuser les cadeaux jetables",tree_id: 2, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
brochures = pipi.children.create(name: "Refuser les brochures", tree_id: 2,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
sacs = pipi.children.create(name: "Refuser les sacs plastiques",tree_id: 2, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
coton = pipi.children.create(name:   "Ne pas acheter de coton tige", tree_id: 2,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
verre = pipi.children.create(name: "Trier le verre", tree_id: 2,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
emballages = pipi.children.create(name: "Trier les emballages",tree_id: 2, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
piles = pipi.children.create(name:  "Trier les piles", tree_id: 2,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
vinaigre = pipi.children.create(name:  "Utiliser du vinaigre blanc pour le ménage", tree_id: 2,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
vantouse = pipi.children.create(name:  "Apprendre à se servir d’une vantouse", tree_id: 2, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
chasse = pipi.children.create(name:  "Je met une bouteille dans ma chasse d’eau",tree_id: 2, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
bouteille = pipi.children.create(name: "Ne pas acheter de l’eau en bouteille",tree_id: 2, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
laitages = pipi.children.create(name:   "Réduire les laitages", tree_id: 2,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
laitages = pipi.children.create(name:  "Faire la cuisine plutôt qu’acheter tout fait",tree_id: 2, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
cuisine = pipi.children.create(name:  "Découper les pommes pour les faire cuire",tree_id: 2, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
viande = pipi.children.create(name:  "Manger moins de viande", tree_id: 2,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
saison = pipi.children.create(name: "Éviter les fruits et légumes hors saison", tree_id: 2,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
etiquette = pipi.children.create(name: "Savoir lire les étiquettes", tree_id: 2,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
recyclage = pipi.children.create(name:  "Connaître les logos du recyclage",tree_id: 2, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")

possible = ecology.children.create(name: "Acheter bio dés que possible",tree_id: 2, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
oxygene = possible.children.create(name: "Comprendre d’où vient l’oxygène",tree_id: 2, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
decroissance = possible.children.create(name:  "Savoir ce qu’est la décroissance",tree_id: 2, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
mer = possible.children.create(name:   "Comprendre la montée du niveau de la mer",tree_id: 2, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
tri_ampoules = possible.children.create(name:   "Trier les ampoules", tree_id: 2,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
papiers = possible.children.create(name:   "Trier les papiers", tree_id: 2,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
bouchons = possible.children.create(name:   "Trier les bouchons",tree_id: 2, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
lointains = possible.children.create(name:   "Découvrir son pays plutôt que les pays lointains", tree_id: 2,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
compost = possible.children.create(name:   "Faire son compost", tree_id: 2,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
microbiome = possible.children.create(name:   "Apprendre le microbiome", tree_id: 2,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
amap = possible.children.create(name:   "S’inscrire dans une amap",tree_id: 2, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
seche = possible.children.create(name: "Utiliser des toilettes sèches",tree_id: 2, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
energie = possible.children.create(name:  "S’inscrire à un fournisseur d’énergie 100% renouvelable",tree_id: 2, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
transport = possible.children.create(name:    "Privilégier les transports en commun", tree_id: 2,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
banque = possible.children.create(name:   "Choisir une banque éthique",tree_id: 2, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
voiture = possible.children.create(name:    "Faire un minimum de trajet en voiture", tree_id: 2,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")

froid = ecology.children.create(name: "Chauffer à 19°C max par temps froid", tree_id: 2,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
douche = froid.children.create(name:   "Acheter du bio local", tree_id: 2,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
lait = froid.children.create(name:   "Arrêter de boire du lait", tree_id: 2,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
vetement = froid.children.create(name:    "Acheter les vêtements d’occasion", tree_id: 2,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
objet = froid.children.create(name:     "Acheter des objets résistants",tree_id: 2, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
occasion = froid.children.create(name:    "Acheter durables et d’occasion", tree_id: 2,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
climatisation = froid.children.create(name:     "Ne jamais utiliser la climatisation",tree_id: 2,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
manger = froid.children.create(name:     "Manger moins", tree_id: 2, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
monnaie = froid.children.create(name:    "Utiliser une monnaie locale", tree_id: 2,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
vrac = froid.children.create(name:  "Acheter en vrac Utiliser", tree_id: 2,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
covoiturage = froid.children.create(name:     "Utiliser le covoiturage",tree_id: 2, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
occasion = froid.children.create(name: "Offrir des cadeaux de Noël d’occasion",tree_id: 2, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
lavables = froid.children.create(name:   "Utiliser des couches lavables",tree_id: 2, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
zero = froid.children.create(name:   "Apprendre le zéro déchet",tree_id: 2, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
ralentir = froid.children.create(name:   "Ralentir", tree_id: 2,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")


puts "#{Skill.count - rubyskill} ecology skills created."

