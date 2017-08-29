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

url = "http://res.cloudinary.com/doodlid/image/upload/v1503506825/max.png"
User.create(first_name: "Maxime", last_name: "Boué", email: "doodlid@yahoo.fr", password: "123456", address: "Bordeaux", photo_url: url)

url ="http://res.cloudinary.com/doodlid/image/upload/v1503482540/profil_renan_gi9org.png"
User.create(first_name: "Renan", last_name: "Dolan", email: "renan@yahoo.fr", password: "123456", address: "Cenon", photo_url: url)

url ="http://res.cloudinary.com/doodlid/image/upload/v1504016573/Save images/Karl.png"
User.create(first_name: "Paul", last_name: "Posichon", email: "paul@yahoo.fr", password: "123456", address: "Bordeaux", photo_url: url)

url ="http://res.cloudinary.com/doodlid/image/upload/c_scale,w_300/v1504018217/Save images/Elena.png"
User.create(first_name: "Elena", last_name: "Ficus", email: "elena@yahoo.fr", password: "123456", address: "Le Bouscat", photo_url: url)

url ="http://res.cloudinary.com/doodlid/image/upload/v1503482540/profil_lea_jz7t71.png"
User.create(first_name: "Léa", last_name: "Lamartine", email: "lea@yahoo.fr", password: "123456", address: "Paris", photo_url: url)

url ="http://res.cloudinary.com/doodlid/image/upload/c_scale,w_300/v1504016581/Save images/Corinne.png"
User.create(first_name: "Corinne", last_name: "Pages", email: "corine@yahoo.fr", password: "123456", address: "Lacanau", photo_url: url)

url ="http://res.cloudinary.com/doodlid/image/upload/v1503482540/Profil_benji_vamqlm.png"
User.create(first_name: "Benjamin", last_name: "Dessange", email: "benjamin@yahoo.fr", password: "123456", address: "Mérignac", photo_url: url)

url ="http://res.cloudinary.com/doodlid/image/upload/v1504016563/Save images/Simon.png"
User.create(first_name: "Simon", last_name: "Nasa", email: "simon@yahoo.fr", password: "123456", address: "Liboune", photo_url: url)

url ="http://res.cloudinary.com/doodlid/image/upload/v1503483318/profil_sylvain_k9pczh.png"
User.create(first_name: "Sylvain", last_name: "Lempereur", email: "sylvain@yahoo.fr", password: "123456", address: "Bordeaux", photo_url: url)

url ="http://res.cloudinary.com/doodlid/image/upload/c_scale,w_300/v1504016585/Save images/Camille.png"
User.create(first_name: "Camille", last_name: "Sim", email: "camille@yahoo.fr", password: "123456", address: "Pessac", photo_url: url)

url ="http://res.cloudinary.com/doodlid/image/upload/c_scale,w_300/v1504018343/Save images/Pascaline.png"
User.create(first_name: "Pascaline", last_name: "Mug", email: "pascaline@yahoo.fr", password: "123456", address: "Floirac", photo_url: url)


categories = [
  "Développement Web",
  "Graphisme",
  "Famille",
  "Spectacle",
  "Artisanat",
  "Design",
  "Informatique d'entreprise",
  "Développement personnel",
  "Éducation",
  "Découverte",
  "Écologie"
]

categories.each do |category|
  Category.create!(name: category)
end

puts "#{Category.count} category created."


url = "http://res.cloudinary.com/doodlid/image/upload/v1503346777/ebs0fhzbikdzvmb5ddon.png"
dev_ruby = Tree.create!(
  name: "Développeur Ruby",
  category_id: Category.first.id,
  color: "#F15555",
  contributors: 170,
  photo_url: url
)

url = "http://res.cloudinary.com/doodlid/image/upload/v1503340773/Tree_ecology_sua5up.png"
eco = Tree.create!(
  name: "Adepte écologie",
  category_id: Category.last.id,
  color: "#59B873",
  contributors: 2500,
  photo_url: url
)

url = "http://res.cloudinary.com/doodlid/image/upload/v1503823564/ecologie_02_ib9tvn.png"
eco2 = Tree.create!(
  name: "Écologie et progrès",
  category_id: Category.last.id,
  color: "#59B873",
  contributors: 163,
  photo_url: url
)

url = "http://res.cloudinary.com/doodlid/image/upload/v1503823664/ecologie_03_g6iq2b.png"
eco3 = Tree.create!(
  name: "Nature et écologie",
  category_id: Category.last.id,
  color: "#59B873",
  contributors: 10,
  photo_url: url
)

url = "http://res.cloudinary.com/doodlid/image/upload/v1503340773/Tree_ux_hrhfl3.png"
ux_design = Tree.create!(
  name: "UX design",
  category_id: Category.find_by_name("Design").id,
  color: "#BD6594",
  photo_url: url
)

url = "http://res.cloudinary.com/doodlid/image/upload/v1503340773/Tree_reader_mtpdtq.png"
lit_fr = Tree.create!(
  name: "Litterature française",
  category_id: Category.find_by_name("Éducation").id,
  color: "#F1B255",
  photo_url: url
)

url = "http://res.cloudinary.com/doodlid/image/upload/v1503340773/Tree_chief_fsm7te.png"
chef = Tree.create!(
  name: "Chef en cuisine",
  category_id: Category.find_by_name("Famille").id,
  color: "#BD6565",
  photo_url: url
)

url = "http://res.cloudinary.com/doodlid/image/upload/v1503484128/Tree_globetrotter_mgrgcw.png"
globe = Tree.create!(
  name: "Globe-trotter",
  category_id: Category.find_by_name("Découverte").id,
  color: "#F1B255",
  photo_url: url
)

url = "http://res.cloudinary.com/doodlid/image/upload/v1503484127/Tree_education_nha3ss.png"
education = Tree.create!(
  name: "Éducation positive",
  category_id: Category.find_by_name("Éducation").id,
  color: "#A365BD",
  photo_url: url
)

url = "http://res.cloudinary.com/doodlid/image/upload/v1503484071/Tree_Devfront_nmrkzc.png"
front = Tree.create!(
  name: "Développeur Frontend",
  category_id: Category.find_by_name("Développement Web").id,
  color: "#6577BD",
  photo_url: url
)

puts "#{Tree.count} trees created."

Skill.create!(name: "globe", tree: globe, action: "Adepte", description: "L'écologie, également connue sous les noms de bioécologie, bionomie ou science de l'environnement ou environnementale, est la science qui étudie les êtres vivants dans leur milieu et les interactions entre eux.")
Skill.create!(name: "education", tree: education, action: "Adepte", description: "L'écologie, également connue sous les noms de bioécologie, bionomie ou science de l'environnement ou environnementale, est la science qui étudie les êtres vivants dans leur milieu et les interactions entre eux.")
Skill.create!(name: "ux_design", tree: ux_design, action: "Adepte", description: "L'écologie, également connue sous les noms de bioécologie, bionomie ou science de l'environnement ou environnementale, est la science qui étudie les êtres vivants dans leur milieu et les interactions entre eux.")
Skill.create!(name: "chef", tree: chef, action: "Adepte", description: "L'écologie, également connue sous les noms de bioécologie, bionomie ou science de l'environnement ou environnementale, est la science qui étudie les êtres vivants dans leur milieu et les interactions entre eux.")
Skill.create!(name: "front", tree: front, action: "Adepte", description: "L'écologie, également connue sous les noms de bioécologie, bionomie ou science de l'environnement ou environnementale, est la science qui étudie les êtres vivants dans leur milieu et les interactions entre eux.")


ruby = Skill.create!(name: "Développement Ruby", action: "Mastering", tree: dev_ruby, description: "Ruby is a general purpose language that is still popular and in high demand in the marketplace, as it's more commonly used in Rails applications. Concise and readable, it is easy to pick up but also plenty powerful. Companies like Twitter, Soundcloud, Goodreads, and Kickstarter got their products off the ground with Ruby.")
  string = ruby.children.create!(name: "introduction string", action: "Learn", tree: dev_ruby,description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
  control = string.children.create!(name: "Condition Loop", action: "Learn", tree: dev_ruby,description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
  array = control.children.create!(name: "Array",action: "Learn",  tree: dev_ruby,description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
  hashes = array.children.create!(name: "Hashes",action: "Learn", tree: dev_ruby, description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
  object = hashes.children.create!(name: "Classes and Object Oriented ",action: "Learn", tree: dev_ruby, description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
  initie = object.children.create!(name: "Initié",action: "Rang atteint", tree: dev_ruby, level: true, description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")

  blocks = ruby.children.create!(name: "Blocks",action: "Learn", tree: dev_ruby, description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
  inheritance = blocks.children.create!(name: "Classes: Inheritance",action:"Learn", tree: dev_ruby, description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
  classes = inheritance.children.create!(name: "More Classes", action: "Learn", tree: dev_ruby,description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
  advarray = classes.children.create!(name: "Advanced Arrays",action: "Use", tree: dev_ruby, description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
  modules = advarray.children.create!(name: "Advanced Modules",action: "Use",  tree: dev_ruby,description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
  eclaire = modules.children.create!(name: "Éclairé",action: "Rang atteint", level: true, tree: dev_ruby, description: "<p><strong>Experience the next level.</strong> You've mastered the Ruby Primer. Now it's time to master more advanced Ruby skills!</p>")

  metaprogramming = ruby.children.create!(name: "Metaprogramming Ruby",action: "Learn", tree: dev_ruby,description: "<p><strong>Code that writes code.</strong> Add more powerful abstractions and reduce duplication through Ruby that writes Ruby!</p>")
  dynamic = metaprogramming.children.create!(name: "Dynamic Methods",action: "Learn", tree: dev_ruby, description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
  inspection = dynamic.children.create!(name: "Code Inspection",action: "Use", tree: dev_ruby, description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
  evaluation = inspection.children.create!(name: "Eval and friends",action: "Learn",  tree: dev_ruby,description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
  cycle = evaluation.children.create!(name: "Lifecycle Hooks",action: "Use", tree: dev_ruby, description: "<p>Learn Ruby, today. You want to learn Ruby for fun, for a new job, or just to see what all the fuss is about? Start here.</p>")
  alumni = cycle.children.create!(name: "Alumni",action: "Rang atteint", level: true, tree: dev_ruby, description: "<p>Experience dynamic power. You've learned the basics of writing code with code in Metaprogramming Ruby. Now take it to the next level with eval, object lifecycle hooks, and more!</p>")

  parsing = eclaire.children.create!(name: "Parsing",action: "Know", tree: dev_ruby,description: "<p><strong>Code that writes code.</strong> Add more powerful abstractions and reduce duplication through Ruby that writes Ruby!</p>")
  storing = parsing.children.create!(name: "Storing Data",action: "Know", tree: dev_ruby,description: "<p><strong>Code that writes code.</strong> Add more powerful abstractions and reduce duplication through Ruby that writes Ruby!</p>")
  api = storing.children.create!(name: "API creation ",action: "Have done", tree: dev_ruby,description: "<p><strong>Code that writes code.</strong> Add more powerful abstractions and reduce duplication through Ruby that writes Ruby!</p>")
  dataformat = api.children.create!(name: "Over-riding Methods",action: "Do", tree: dev_ruby,description: "<p><strong>Code that writes code.</strong> Add more powerful abstractions and reduce duplication through Ruby that writes Ruby!</p>")
  parsing = dataformat.children.create!(name: "Open Classes",action: "Use", tree: dev_ruby,description: "<p><strong>Code that writes code.</strong> Add more powerful abstractions and reduce duplication through Ruby that writes Ruby!</p>")
  datamaitre = parsing.children.create!(name: "Maître du Big Data",action: "Rang atteint", level: true, tree: dev_ruby, description: "<p>Experience dynamic power. You've learned the basics of writing code with code in Metaprogramming Ruby. Now take it to the next level with eval, object lifecycle hooks, and more!</p>")

  duck = eclaire.children.create!(name: "Duck typing",action: "Use", tree: dev_ruby,description: "<p><strong>Code that writes code.</strong> Add more powerful abstractions and reduce duplication through Ruby that writes Ruby!</p>")
  overloading = duck.children.create!(name: "Ruby overloading",action: "Use", tree: dev_ruby,description: "<p><strong>Code that writes code.</strong> Add more powerful abstractions and reduce duplication through Ruby that writes Ruby!</p>")
  excep = overloading.children.create!(name: "Methods Exceptions",action: "Use", tree: dev_ruby,description: "<p><strong>Code that writes code.</strong> Add more powerful abstractions and reduce duplication through Ruby that writes Ruby!</p>")
  serial = excep.children.create!(name: "Object Serialization",action: "Use", tree: dev_ruby,description: "<p><strong>Code that writes code.</strong> Add more powerful abstractions and reduce duplication through Ruby that writes Ruby!</p>")

  maitre = serial.children.create!(name: "Maître du Ruby Flamboyant",action: "Rang atteint", level: true, tree: dev_ruby, description: "<p>Experience dynamic power. You've learned the basics of writing code with code in Metaprogramming Ruby. Now take it to the next level with eval, object lifecycle hooks, and more!</p>")


puts "#{Skill.count} ruby skills created."
rubyskill = Skill.count


ecology = Skill.create!(name: "Écologie", tree: eco, action: "Adepte", description: "L'écologie, également connue sous les noms de bioécologie, bionomie ou science de l'environnement ou environnementale, est la science qui étudie les êtres vivants dans leur milieu et les interactions entre eux.")

## COLONNE 1
pipi = ecology.children.create!(name: "Faire pipi dans la douche", action: "Learn",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
ampoule = pipi.children.create!(name: "Installer des ampoules à économies d'énergie",action: "Learn",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
course = ampoule.children.create!(name: "Emmener un sac durable pour faire les courses",action: "Learn",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
eco_initie = course.children.create!(name: "Initié",action: "Rang atteint",level: true,tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")

#1er séparation
# 2 COLONNES - 1er
verre = eco_initie.children.create!(name: "Trier le verre", action: "Learn",tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
emballages = verre.children.create!(name: "Trier les emballages",action: "Learn",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
piles = emballages.children.create!(name:  "Trier les piles", action: "Learn",tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
eco_seigneurdutri = piles.children.create!(name: "Seigneur du Tri",action: "Rang atteint",level: true,tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")

# 2 COLONNES - 2eme
pub = eco_initie.children.create!(name: "Installer un autocollant Stop Pub",action: "Learn",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
cadeaux = pub.children.create!(name: "Refuser les cadeaux jetables",action: "Learn",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
brochures = cadeaux.children.create!(name: "Refuser les brochures",action: "Learn", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
sacs = brochures.children.create!(name: "Refuser les sacs plastiques",action: "Learn",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
coton = sacs.children.create!(name: "Ne pas acheter de coton tige",action: "Learn", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
eco_seigneurdunon = coton.children.create!(name: "Seigneur du Non",action: "Rang atteint",level: true,tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")

#2eme séparation
# 2 COLONNES - 1er
vinaigre = eco_seigneurdutri.children.create!(name:  "Utiliser du vinaigre blanc pour le ménage",action: "Learn", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
vantouse = vinaigre.children.create!(name:  "Apprendre à se servir d’une vantouse",action: "Learn", tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
chasse = vantouse.children.create!(name:  "Je met une bouteille dans ma chasse d’eau",action: "Learn",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
bouteille = chasse.children.create!(name: "Ne pas acheter de l’eau en bouteille",action: "Learn",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
laitages = bouteille.children.create!(name:   "Réduire les laitages", action: "Learn",tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
gardeposeidon = laitages.children.create!(name: "Garde de poséidon",action: "Rang atteint",level: true,tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")

# 2 COLONNES - 2eme
fait = eco_seigneurdutri.children.create!(name:  "Faire la cuisine plutôt qu’acheter tout fait",action: "Learn",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
cuisine = fait.children.create!(name:  "Découper les pommes pour les faire cuire",action: "Learn",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
viande = cuisine.children.create!(name:  "Manger moins de viande", action: "Learn",tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
saison = viande.children.create!(name: "Éviter les fruits et légumes hors saison", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
chefintraitable = saison.children.create!(name: "Chef intraitables",action: "Rang atteint",level: true,tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")

## 2eme séparation
# 2 COLONNES - 1er
froid = gardeposeidon.children.create!(name: "Chauffer à 19°C max par temps froid",action: "Learn",  tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
douche = froid.children.create!(name:   "Acheter du bio local", action: "Learn", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
lait = douche.children.create!(name:   "Arrêter de boire du lait", action: "Learn", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
vetement = lait.children.create!(name:    "Acheter les vêtements d’occasion", action: "Learn", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
objet = vetement.children.create!(name:     "Acheter des objets résistants",action: "Learn", tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
occasion = objet.children.create!(name:    "Acheter durables et d’occasion", action: "Learn", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
climatisation = occasion.children.create!(name:     "Ne jamais utiliser la climatisation",action: "Learn", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
manger = climatisation.children.create!(name:     "Manger moins", action: "Learn", tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
monnaie = manger.children.create!(name:    "Utiliser une monnaie locale", action: "Learn", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
vrac = monnaie.children.create!(name:  "Acheter en vrac Utiliser",action: "Learn",  tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
covoiturage = vrac.children.create!(name:     "Utiliser le covoiturage",action: "Learn", tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
occasion = covoiturage.children.create!(name: "Offrir des cadeaux de Noël d’occasion",action: "Learn", tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
lavables = occasion.children.create!(name:   "Utiliser des couches lavables",action: "Learn", tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
zero = lavables.children.create!(name:   "Apprendre le zéro déchet",action: "Learn", tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
ralentir = zero.children.create!(name:   "Ralentir", action: "Learn", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
gardedegaia = ralentir.children.create!(name: "Garde de Gaia",action: "Rang atteint",level: true,tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")


# 2 COLONNES - 2eme
etiquette = gardeposeidon.children.create!(name: "Savoir lire les étiquettes", action: "Learn",tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
recyclage = etiquette.children.create!(name:  "Connaître les logos du recyclage",action: "Learn",tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
bio = recyclage.children.create!(name: "Acheter bio dés que possible", action: "Learn", tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
oxygene = bio.children.create!(name: "Comprendre d’où vient l’oxygène", action: "Learn", tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
decroissance = oxygene.children.create!(name:  "Savoir ce qu’est la décroissance", action: "Learn", tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
mer = decroissance.children.create!(name:   "Comprendre la montée du niveau de la mer", action: "Learn", tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
tri_ampoules = mer.children.create!(name:   "Trier les ampoules", action: "Learn",  tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
papiers = tri_ampoules.children.create!(name:   "Trier les papiers", action: "Learn",  tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
bouchons = papiers.children.create!(name:   "Trier les bouchons", action: "Learn", tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
lointains = bouchons.children.create!(name:   "Découvrir son pays plutôt que les pays lointains",  action: "Learn", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
compost = lointains.children.create!(name:   "Faire son compost",  action: "Learn", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
microbiome = compost.children.create!(name:   "Apprendre le microbiome",  action: "Learn", tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
amap = microbiome.children.create!(name:   "S’inscrire dans une amap", action: "Learn", tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
seche = amap.children.create!(name: "Utiliser des toilettes sèches", action: "Learn", tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
energie = seche.children.create!(name:  "S’inscrire à un fournisseur d’énergie 100% renouvelable", action: "Learn", tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
transport = energie.children.create!(name:    "Privilégier les transports en commun", action: "Learn",  tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
banque = transport.children.create!(name:   "Choisir une banque éthique", action: "Learn", tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
voiture = banque.children.create!(name:    "Faire un minimum de trajet en voiture", action: "Learn",  tree: eco,description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")
gardedepan = voiture.children.create!(name: "Garde de Pan",action: "Rang atteint",level: true,tree: eco, description: "Parum claram anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima eodem. Sit amet consectetuer adipiscing elit, sed diam nonummy.")

puts "#{Skill.count - rubyskill} ecology skills created."



UserTree.create!(
  user: User.find_by(first_name: 'Maxime'),
  tree: Tree.find_by(name: "Développeur Frontend")
  )

UserTree.create!(
  user: User.find_by(first_name: 'Maxime'),
  tree: Tree.find_by(name: "Éducation positive")
  )

UserTree.create!(
  user: User.find_by(first_name: 'Maxime'),
  tree: Tree.find_by(name: "UX design")
  )

UserTree.create!(
  user: User.find_by(first_name: 'Maxime'),
  tree: Tree.find_by(name: "Globe-trotter")
  )

UserTree.create!(
  user: User.find_by(first_name: 'Sylvain'),
  tree: Tree.find_by(name: "Développeur Frontend")
  )

UserTree.create!(
  user: User.find_by(first_name: 'Sylvain'),
  tree: Tree.find_by(name: "UX design")
  )

UserTree.create!(
  user: User.find_by(first_name: 'Sylvain'),
  tree: Tree.find_by(name: "Développeur Ruby")
  )

UserTree.create!(
  user: User.find_by(first_name: 'Léa'),
  tree: Tree.find_by(name: "Développeur Ruby")
  )

UserTree.create!(
  user: User.find_by(first_name: 'Maxime'),
  tree: Tree.find_by(name: "Développeur Ruby")
  )

UserTree.create!(
  user: User.find_by(first_name: 'Renan'),
  tree: Tree.find_by(name: "Développeur Ruby")
  )

UserTree.create!(
  user: User.find_by(first_name: 'Benjamin'),
  tree: Tree.find_by(name: "Développeur Ruby")
  )

UserTree.create!(
  user: User.find_by(first_name: 'Paul'),
  tree: Tree.find_by(name: "Chef en cuisine")
  )

UserTree.create!(
  user: User.find_by(first_name: 'Paul'),
  tree: Tree.find_by(name: "Éducation positive")
  )

UserTree.create!(
  user: User.find_by(first_name: 'Elena'),
  tree: Tree.find_by(name: "Globe-trotter")
  )

UserTree.create!(
  user: User.find_by(first_name: 'Elena'),
  tree: Tree.find_by(name: "Développeur Frontend")
  )

UserTree.create!(
  user: User.find_by(first_name: 'Corinne'),
  tree: Tree.find_by(name: "Développeur Ruby")
  )

UserTree.create!(
  user: User.find_by(first_name: 'Corinne'),
  tree: Tree.find_by(name: "Ux design")
  )

UserTree.create!(
  user: User.find_by(first_name: 'Corinne'),
  tree: Tree.find_by(name: "Litérature française")
  )

UserTree.create!(
  user: User.find_by(first_name: 'Simon'),
  tree: Tree.find_by(name: "Globe-trotter")
  )

UserTree.create!(
  user: User.find_by(first_name: 'Simon'),
  tree: Tree.find_by(name: "Litérature française")
  )

UserTree.create!(
  user: User.find_by(first_name: 'Camille'),
  tree: Tree.find_by(name: "Ux design")
  )

UserTree.create!(
  user: User.find_by(first_name: 'Camille'),
  tree: Tree.find_by(name: "Developpeur Frontend")
  )

UserTree.create!(
  user: User.find_by(first_name: 'Pascaline'),
  tree: Tree.find_by(name: "Chef en cuisine")
  )

UserTree.create!(
  user: User.find_by(first_name: 'Pascaline'),
  tree: Tree.find_by(name: "Éducation positive")
  )

UserTree.create!(
  user: User.find_by(first_name: 'Pascaline'),
  tree: Tree.find_by(name: "Globe-trotter")
  )

puts "#{UserTree.count} usertree created."


18.times do
UserSkill.create!(
  user: User.find_by(first_name: 'Maxime'),
  skill: Skill.find_by(name: "front")
  )
end

8.times do
UserSkill.create!(
  user: User.find_by(first_name: 'Maxime'),
  skill: Skill.find_by(name: "globe")
  )
end

17.times do
UserSkill.create!(
  user: User.find_by(first_name: 'Maxime'),
  skill: Skill.find_by(name: "ux_design")
  )
end

14.times do
UserSkill.create!(
  user: User.find_by(first_name: 'Maxime'),
  skill: Skill.find_by(name: "education")
  )
end

49.times do
UserSkill.create!(
  user: User.find_by(first_name: 'Sylvain'),
  skill: Skill.find_by(name: "introduction string")
  )
end

41.times do
UserSkill.create!(
  user: User.find_by(first_name: 'Sylvain'),
  skill: Skill.find_by(name: "front")
  )
end

27.times do
UserSkill.create!(
  user: User.find_by(first_name: 'Sylvain'),
  skill: Skill.find_by(name: "ux_design")
  )
end

5.times do
UserSkill.create!(
  user: User.find_by(first_name: 'Sylvain'),
  skill: Skill.find_by(name: "chef")
  )
end

7.times do
UserSkill.create!(
  user: User.find_by(first_name: 'Sylvain'),
  skill: Skill.find_by(name: "Faire pipi dans la douche")
  )
end

rand(10..15).times do
UserSkill.create!(
  user: User.find_by(first_name: 'Léa'),
  skill: Skill.find_by(name: "introduction string")
  )
end

rand(5..20).times do
UserSkill.create!(
  user: User.find_by(first_name: 'Léa'),
  skill: Skill.find_by(name: "front")
  )
end

rand(10..15).times do
UserSkill.create!(
  user: User.find_by(first_name: 'Renan'),
  skill: Skill.find_by(name: "introduction string")
  )
end

rand(5..20).times do
UserSkill.create!(
  user: User.find_by(first_name: 'Renan'),
  skill: Skill.find_by(name: "front")
  )
end


rand(10..15).times do
UserSkill.create!(
  user: User.find_by(first_name: 'Benjamin'),
  skill: Skill.find_by(name: "introduction string")
  )
end

rand(10..20).times do
UserSkill.create!(
  user: User.find_by(first_name: 'Benjamin'),
  skill: Skill.find_by(name: "front")
  )
end

rand(5..20).times do
UserSkill.create!(
  user: User.find_by(first_name: 'Paul'),
  skill: Skill.find_by(name: "chef")
  )
end

rand(10..15).times do
UserSkill.create!(
  user: User.find_by(first_name: 'Paul'),
  skill: Skill.find_by(name: "education")
  )
end

rand(5..20).times do
UserSkill.create!(
  user: User.find_by(first_name: 'Paul'),
  skill: Skill.find_by(name: "front")
  )
end

rand(5..20).times do
UserSkill.create!(
  user: User.find_by(first_name: 'Elena'),
  skill: Skill.find_by(name: "globe")
  )
end

rand(0..10).times do
UserSkill.create!(
  user: User.find_by(first_name: 'Elena'),
  skill: Skill.find_by(name: "front")
  )
end

rand(0..10).times do
UserSkill.create!(
  user: User.find_by(first_name: 'Corinne'),
  skill: Skill.find_by(name: "education")
  )
end

rand(15..20).times do
UserSkill.create!(
  user: User.find_by(first_name: 'Corinne'),
  skill: Skill.find_by(name: "ux_design")
  )
end

rand(0..20).times do
UserSkill.create!(
  user: User.find_by(first_name: 'Corinne'),
  skill: Skill.find_by(name: "Array")
  )
end

rand(0..20).times do
UserSkill.create!(
  user: User.find_by(first_name: 'Simon'),
  skill: Skill.find_by(name: "globe")
  )
end

rand(0..20).times do
UserSkill.create!(
  user: User.find_by(first_name: 'Simon'),
  skill: Skill.find_by(name: "education")
  )
end

rand(0..20).times do
UserSkill.create!(
  user: User.find_by(first_name: 'Camille'),
  skill: Skill.find_by(name: "ux_design")
  )
end

rand(0..20).times do
UserSkill.create!(
  user: User.find_by(first_name: 'Camille'),
  skill: Skill.find_by(name: "front")
  )
end

rand(0..20).times do
UserSkill.create!(
  user: User.find_by(first_name: 'Pascaline'),
  skill: Skill.find_by(name: "chef")
  )
end

rand(0..20).times do
UserSkill.create!(
  user: User.find_by(first_name: 'Pascaline'),
  skill: Skill.find_by(name: "education")
  )
end

rand(0..20).times do
UserSkill.create!(
  user: User.find_by(first_name: 'Pascaline'),
  skill: Skill.find_by(name: "Trier le verre")
  )
end

puts "#{User.count} users created."


