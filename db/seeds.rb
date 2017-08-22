# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Skill.destroy_all
Tree.destroy_all
Category.destroy_all
User.destroy_all

User.create(email: "doodlid@yahoo.fr", password: "123456", address: "Bordeaux")
User.create(email: "etienne.ziegelmeyer@yahoo.fr", password: "123456", address: "Colmart")


categories = ["Développement Web", "Graphisme", "Famille", "Spectacle","Artisanat","Design","Informatique d'entreprise","Développement personnel", "Éducation","Tourisme","Écologie"]

categories.each do |category|
  Category.create!(name: category)
end

puts "#{Category.count} category created."

url = "http://res.cloudinary.com/doodlid/image/upload/v1503346777/ebs0fhzbikdzvmb5ddon.png"
dev_ruby = Tree.create!(
  name: "Développeur Ruby",
  category_id: Category.first.id,
  photo_url: url
)


url = "http://res.cloudinary.com/doodlid/image/upload/v1503340773/Tree_ecology_sua5up.png"
eco = Tree.create!(
  name: "Adepte écologie",
  category_id: Category.last.id,
  photo_url: url
)


url = "http://res.cloudinary.com/doodlid/image/upload/v1503340773/Tree_ux_hrhfl3.png"
ux_design = Tree.create!(
  name: "UX design",
  category_id: Category.find_by_name("Design"),
  photo_url: url
)


url = "http://res.cloudinary.com/doodlid/image/upload/v1503340773/Tree_reader_mtpdtq.png"
lit_fr = Tree.create!(
  name: "Litterature française",
  category_id: Category.find_by_name("Éducation"),
  photo_url: url
)

url = "http://res.cloudinary.com/doodlid/image/upload/v1503340773/Tree_chief_fsm7te.png"
chef = Tree.create!(
  name: "Chef en cuisine",
  category_id: Category.find_by_name("Famille"),
  photo_url: url
)

puts "#{Tree.count} trees created."


ruby = Skill.create!(name: "Ruby", tree: dev_ruby, description: "Ruby is a general purpose language that is still popular and in high demand in the marketplace, as it's more commonly used in Rails applications. Concise and readable, it is easy to pick up but also plenty powerful. Companies like Twitter, Soundcloud, Goodreads, and Kickstarter got their products off the ground with Ruby.")
    string = ruby.children.create!(name: "introduction string", tree: dev_ruby,description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
    control = string.children.create!(name: "Condition Loop", tree: dev_ruby,description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
    array = control.children.create!(name: "Array", tree: dev_ruby,description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
    hashes = array.children.create!(name: "Hashes",tree: dev_ruby, description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
    object = hashes.children.create!(name: "Classes and Object Oriented ",tree: dev_ruby, description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
    rubyprimer = object.children.create!(name: "Ruby Primer", tree: dev_ruby, level: true, description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
  rubyascent = ruby.children.create!(name: "Ruby Primer Ascent",tree: dev_ruby, description: "<p><strong>Experience the next level.</strong> You've mastered the Ruby Primer. Now it's time to master more advanced Ruby skills!</p>")
    blocks = rubyascent.children.create!(name: "Blocks",tree: dev_ruby, description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
    inheritance = rubyascent.children.create!(name: "Classes: Inheritance",tree: dev_ruby, description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
    classes = rubyascent.children.create!(name: "More Classes", tree: dev_ruby,description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
    advarray = rubyascent.children.create!(name: "Advanced Arrays",tree: dev_ruby, description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
    modules = rubyascent.children.create!(name: "Advanced Modules", tree: dev_ruby,description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
  metaprogramming = ruby.children.create!(name: "Metaprogramming Ruby",tree: dev_ruby,description: "<p><strong>Code that writes code.</strong> Add more powerful abstractions and reduce duplication through Ruby that writes Ruby!</p>")
    meta = metaprogramming.children.create!(name: "Ruby Primer Ascent",tree: dev_ruby, description: "<p><strong>Experience the next level.</strong> You've mastered the Ruby Primer. Now it's time to master more advanced Ruby skills!</p>")
    dynamic = metaprogramming.children.create!(name: "Dynamic Methods",tree: dev_ruby, description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
    inspection = metaprogramming.children.create!(name: "Code Inspection",tree: dev_ruby, description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
    evaluation = metaprogramming.children.create!(name: "Eval and friends", tree: dev_ruby,description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
    cycle = metaprogramming.children.create!(name: "Lifecycle Hooks",tree: dev_ruby, description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
    finished = metaprogramming.children.create!(name: "Real World",tree: dev_ruby, description: "<p>Experience dynamic power. You've learned the basics of writing code with code in Metaprogramming Ruby. Now take it to the next level with eval, object lifecycle hooks, and more!</p>")

puts "#{Skill.count} ruby skills created."

rubyskill = Skill.count


ecology = Skill.create!(name: "Écologie", tree: eco,  description: "L'écologie, également connue sous les noms de bioécologie, bionomie ou science de l'environnement ou environnementale, est la science qui étudie les êtres vivants dans leur milieu et les interactions entre eux.")

pipi = ecology.children.create!(name: "Faire pipi dans la douche", tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
ampoule = pipi.children.create!(name: "Installer des ampoules à économies d'énergie",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
course = pipi.children.create!(name: "Emmener un sac durable pour faire les courses",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
pub = pipi.children.create!(name: "Installer un autocollant Stop Pub",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
cadeaux = pipi.children.create!(name: "Refuser les cadeaux jetables",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
brochures = pipi.children.create!(name: "Refuser les brochures", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
sacs = pipi.children.create!(name: "Refuser les sacs plastiques",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
coton = pipi.children.create!(name:   "Ne pas acheter de coton tige", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
verre = pipi.children.create!(name: "Trier le verre", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
emballages = pipi.children.create!(name: "Trier les emballages",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
piles = pipi.children.create!(name:  "Trier les piles", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
vinaigre = pipi.children.create!(name:  "Utiliser du vinaigre blanc pour le ménage", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
vantouse = pipi.children.create!(name:  "Apprendre à se servir d’une vantouse", tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
chasse = pipi.children.create!(name:  "Je met une bouteille dans ma chasse d’eau",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
bouteille = pipi.children.create!(name: "Ne pas acheter de l’eau en bouteille",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
laitages = pipi.children.create!(name:   "Réduire les laitages", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
laitages = pipi.children.create!(name:  "Faire la cuisine plutôt qu’acheter tout fait",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
cuisine = pipi.children.create!(name:  "Découper les pommes pour les faire cuire",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
viande = pipi.children.create!(name:  "Manger moins de viande", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
saison = pipi.children.create!(name: "Éviter les fruits et légumes hors saison", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
etiquette = pipi.children.create!(name: "Savoir lire les étiquettes", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
recyclage = pipi.children.create!(name:  "Connaître les logos du recyclage",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")

possible = ecology.children.create!(name: "Acheter bio dés que possible",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
oxygene = possible.children.create!(name: "Comprendre d’où vient l’oxygène",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
decroissance = possible.children.create!(name:  "Savoir ce qu’est la décroissance",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
mer = possible.children.create!(name:   "Comprendre la montée du niveau de la mer",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
tri_ampoules = possible.children.create!(name:   "Trier les ampoules", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
papiers = possible.children.create!(name:   "Trier les papiers", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
bouchons = possible.children.create!(name:   "Trier les bouchons",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
lointains = possible.children.create!(name:   "Découvrir son pays plutôt que les pays lointains", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
compost = possible.children.create!(name:   "Faire son compost", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
microbiome = possible.children.create!(name:   "Apprendre le microbiome", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
amap = possible.children.create!(name:   "S’inscrire dans une amap",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
seche = possible.children.create!(name: "Utiliser des toilettes sèches",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
energie = possible.children.create!(name:  "S’inscrire à un fournisseur d’énergie 100% renouvelable",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
transport = possible.children.create!(name:    "Privilégier les transports en commun", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
banque = possible.children.create!(name:   "Choisir une banque éthique",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
voiture = possible.children.create!(name:    "Faire un minimum de trajet en voiture", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")

froid = ecology.children.create!(name: "Chauffer à 19°C max par temps froid", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
douche = froid.children.create!(name:   "Acheter du bio local", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
lait = froid.children.create!(name:   "Arrêter de boire du lait", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
vetement = froid.children.create!(name:    "Acheter les vêtements d’occasion", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
objet = froid.children.create!(name:     "Acheter des objets résistants",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
occasion = froid.children.create!(name:    "Acheter durables et d’occasion", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
climatisation = froid.children.create!(name:     "Ne jamais utiliser la climatisation",tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
manger = froid.children.create!(name:     "Manger moins", tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
monnaie = froid.children.create!(name:    "Utiliser une monnaie locale", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
vrac = froid.children.create!(name:  "Acheter en vrac Utiliser", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
covoiturage = froid.children.create!(name:     "Utiliser le covoiturage",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
occasion = froid.children.create!(name: "Offrir des cadeaux de Noël d’occasion",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
lavables = froid.children.create!(name:   "Utiliser des couches lavables",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
zero = froid.children.create!(name:   "Apprendre le zéro déchet",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
ralentir = froid.children.create!(name:   "Ralentir", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")


puts "#{Skill.count - rubyskill} ecology skills created."

