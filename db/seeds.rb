Animal.destroy_all
User.destroy_all

User.create!(
  username: "Mathou",
  email: "mathou@lewagon.com",
  password: "password"
)
User.create!(
  username: "Jéremy",
  email: "jerem@lewagon.com",
  password: "password"
)
User.create!(
  username: "Yanis",
  email: "yanis@lewagon.com",
  password: "password"
)
User.create!(
  username: "Seryl",
  email: "seryl@lewagon.com",
  password: "password"
)
Animal.create!(
  user: User.find_by(username: "Mathou"),
  specie: "lapin",
  image_url: "https://static.teteamodeler.com/media/cache/thumb_400/lalimentation-du-lapin-.jpeg",
  name: "Jacob",
  description: "Rongeur de compétition, tondre c'est sa religion. Et il fait ça avec passion !",
  price_per_day: 25
)
Animal.create!(
  user: User.find_by(username: "Jéremy"),
  specie:"vegan",
  image_url:"https://reductress.com/wp-content/uploads/2014/07/woman-eating-apple.jpg",
  name: "Pomme",
  description: "Pomme est une vegane accomplie, brouter est sa destinée.",
  price_per_day: 5
)
Animal.create!(
  user: User.find_by(username: "Yanis"),
  specie: "escargot",
  image_url: "https://tse2.mm.bing.net/th?id=OIP.IJjzbq9zVI7JzpVY3vEweQHaD3&pid=Api&P=0&w=525&h=571",
  name: "Karlo",
  description: "Lent mais consienscieux, il appliquera en bonus un lubrifiant naturel dont il à le secret (Karlo etant trés fragile une caution de 1000€ vous sera demandée, merci de ne pas les écraser !)",
  price_per_day: 1000
)
Animal.create!(
  user: User.find_by(username: "Seryl"),
  specie: "lama",
  image_url: "https://reductress.com/wp-content/uploads/2014/07/woman-eating-apple.jpg",
  name: "Serge",
  description: "Aussi bon brouteur que chanteur, Serge ou Sergio (en portugais) vous proposera egalement un service de lavage de vitre.",
  price_per_day: 400
)
Animal.create!(
  user: User.find_by(username: "Mathou"),
  specie: "vegan",
  image_url:"https://tse1.mm.bing.net/th?id=OIP.v0HbINVwEZPdOcym9LL78wHaE8&pid=Api&P=0&w=560&h=574",
  name: "Pierre Boulgour",
  description:"Spécialiste des grands espaces, il deploiera tout son potentiel aprés ingurgitation de son met favoris 'Le Boulghour'",
  price_per_day: 43
)
