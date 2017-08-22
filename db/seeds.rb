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




puts "#{Skill.count} ruby skills created."

rubyskill = Skill.count


ecology = Skill.create(name: "Écologie", description: "L'écologie, également connue sous les noms de bioécologie, bionomie ou science de l'environnement ou environnementale, est la science qui étudie les êtres vivants dans leur milieu et les interactions entre eux.")

pipi = ecology.children.create(name: "Faire pipi dans la douche", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
ampoule = pipi.children.create(name: "Installer des ampoules à économies d'énergie", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
course = pipi.children.create(name: "Emmener un sac durable pour faire les courses", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
pub = pipi.children.create(name: "Installer un autocollant Stop Pub", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
cadeaux = pipi.children.create(name: "Refuser les cadeaux jetables", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
brochures = pipi.children.create(name: "Refuser les brochures", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
sacs = pipi.children.create(name: "Refuser les sacs plastiques", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
coton = pipi.children.create(name:   "Ne pas acheter de coton tige", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
verre = pipi.children.create(name: "Trier le verre", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
emballages = pipi.children.create(name: "Trier les emballages", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
piles = pipi.children.create(name:  "Trier les piles", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
vinaigre = pipi.children.create(name:  "Utiliser du vinaigre blanc pour le ménage", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
vantouse = pipi.children.create(name:  "Apprendre à se servir d’une vantouse",  description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
chasse = pipi.children.create(name:  "Je met une bouteille dans ma chasse d’eau", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
bouteille = pipi.children.create(name: "Ne pas acheter de l’eau en bouteille", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
laitages = pipi.children.create(name:   "Réduire les laitages", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
laitages = pipi.children.create(name:  "Faire la cuisine plutôt qu’acheter tout fait", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
cuisine = pipi.children.create(name:  "Découper les pommes pour les faire cuire", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
viande = pipi.children.create(name:  "Manger moins de viande", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
saison = pipi.children.create(name: "Éviter les fruits et légumes hors saison", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
etiquette = pipi.children.create(name: "Savoir lire les étiquettes", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
recyclage = pipi.children.create(name:  "Connaître les logos du recyclage", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")

possible = ecology.children.create(name: "Acheter bio dés que possible", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
oxygene = possible.children.create(name: "Comprendre d’où vient l’oxygène", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
decroissance = possible.children.create(name:  "Savoir ce qu’est la décroissance", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
mer = possible.children.create(name:   "Comprendre la montée du niveau de la mer", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
tri_ampoules = possible.children.create(name:   "Trier les ampoules", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
papiers = possible.children.create(name:   "Trier les papiers", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
bouchons = possible.children.create(name:   "Trier les bouchons", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
lointains = possible.children.create(name:   "Découvrir son pays plutôt que les pays lointains", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
compost = possible.children.create(name:   "Faire son compost", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
microbiome = possible.children.create(name:   "Apprendre le microbiome", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
amap = possible.children.create(name:   "S’inscrire dans une amap", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
seche = possible.children.create(name: "Utiliser des toilettes sèches", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
energie = possible.children.create(name:  "S’inscrire à un fournisseur d’énergie 100% renouvelable", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
transport = possible.children.create(name:    "Privilégier les transports en commun", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
banque = possible.children.create(name:   "Choisir une banque éthique", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
voiture = possible.children.create(name:    "Faire un minimum de trajet en voiture", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")

froid = ecology.children.create(name: "Chauffer à 19°C max par temps froid", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
douche = froid.children.create(name:   "Acheter du bio local", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
lait = froid.children.create(name:   "Arrêter de boire du lait", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
vetement = froid.children.create(name:    "Acheter les vêtements d’occasion", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
objet = froid.children.create(name:     "Acheter des objets résistants", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
occasion = froid.children.create(name:    "Acheter durables et d’occasion", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
climatisation = froid.children.create(name:     "Ne jamais utiliser la climatisation",description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
manger = froid.children.create(name:     "Manger moins",  description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
monnaie = froid.children.create(name:    "Utiliser une monnaie locale", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
vrac = froid.children.create(name:  "Acheter en vrac Utiliser", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
covoiturage = froid.children.create(name:     "Utiliser le covoiturage", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
occasion = froid.children.create(name: "Offrir des cadeaux de Noël d’occasion", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
lavables = froid.children.create(name:   "Utiliser des couches lavables", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
zero = froid.children.create(name:   "Apprendre le zéro déchet", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
ralentir = froid.children.create(name:   "Ralentir", description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")


puts "#{Skill.count - rubyskill} ecology skills created."

