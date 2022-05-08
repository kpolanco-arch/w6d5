# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cat.destroy_all

kitty = Cat.create!(birth_date: '2015/01/20', color: 'white', name: 'Kitty', sex: 'F', description: 'small cat', image_url: "https://www.thehappycatsite.com/wp-content/uploads/2017/12/White-Cat-HC-long.jpg")
garfield = Cat.create!(birth_date: '2000/01/20', color: 'orange', name: 'Garfield', sex: 'M', description: 'hungry cat', image_url:"https://wrestlecrap.com/wp-content/uploads/2022/04/Garfield_the_Cat.svg_.png")
hellokitty = Cat.create!(birth_date: '1974/11/01', color: 'white', name: 'Hello_Kitty', sex: 'F', description: 'cute cat', image_url:"http://clipart-library.com/images/8cxrx48Ki.gif")
seuss = Cat.create!(birth_date: '1800/08/05', color: 'black', name: 'Dr_Seuss', sex: 'M', description: 'old cat', image_url:"https://i.etsystatic.com/20039723/r/il/00bd0c/2382771595/il_1588xN.2382771595_ozd4.jpg")




