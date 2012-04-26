# This file should contain all the record creation needed to seed the
# database with its default values. The data can then be loaded with
# the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Type.delete_all

type1 = Type.create!(
            name: 'Monumento',
            description: 'Edificio de interes turistico o artistico')

type2 = Type.create!(
            name: 'Naturaleza',
            description: 'Lugar al aire libre de interes natural o de recreo')

type3 = Type.create!(
            name: 'Ruina',
            description: 'Lugar o resto de interes arquelogico')


User.delete_all

user1 = User.create!( 
            name: 'Jose Perez',
            email: 'jose.perez@gmail.com', 
            password: 'perez22',
            password_confirmation: 'perez22')

user2 = User.create!( 
            name: 'Javier Sedano',
            email: 'javier.sedano@me.com', 
            password: 'sedano22',
            password_confirmation: 'sedano22')

user3 = User.create!( 
            name: 'Alvaro Martin',
            email: 'alvaro@planet.com', 
            password: '123456',
            password_confirmation: '123456')

user4 = User.create!( 
            name: 'Tiago Pais',
            email: 'tiago@planet.com', 
            password: '123456',
            password_confirmation: '123456')


Site.delete_all

site1= Site.create!(
            name: 'Pedriza',
            description: 'Magnifico valle al norte de Madrid en el Macizo Central',
            type_id: type2.id,
            image_url: 'pedriza.png',
            latitud: 40.727054,
            longitud: -3.8649140999999645,
            zoom: 15,
            image: File.open(File.join(Rails.root, 'app', 'assets','images', 'pedriza.png'), "r"))
site1.user_id = user1.id ; site1.save 

site2 = Site.create!(
            name: 'Catedral de Florencia',
            description: 'Catedral de la ciudad de Florencia con la que se inicia el Renacimiento',
            type_id: type1.id,
            image_url: 'florencia.png',
            latitud: 43.772876,
            longitud: 11.255798,
            zoom: 15,
            image: File.open(File.join(Rails.root, 'app', 'assets','images', 'florencia.png'), "r"))
site2.user_id = user1.id ; site2.save 

site3 = Site.create!(
            name: 'Jardin de Lineo',
            description: 'Jardin de la ciudad sueca de Uppsala donde el famoso naturalista tenia su coleccion de plantas',
            type_id: type1.id,
            image_url: 'arbol1.png',
            latitud: 59.8622347,
            longitud: 17.6341485,
            zoom: 15,
            image: File.open(File.join(Rails.root, 'app', 'assets','images', 'arbol1.png'), "r"))
site3.user_id = user2.id ; site3.save 

site4 = Site.create!(
            name: 'Reichstag',
            description: 'Parlamento aleman en la ciudad de Berlin',
            type_id: type2.id,
            image_url: 'reichstag.png',
            latitud: 52.5186516,
            longitud: 13.3759899,
            zoom: 15,
            image: File.open(File.join(Rails.root, 'app', 'assets','images', 'reichstag.png'), "r"))
site4.user_id = user2.id ; site4.save 

site5 = Site.create!(
            name: 'Pergamo',
            description: 'Puerta del mercado de la antigua ciudad griega de Pergamo del museo arquelogico de Berlin',
            type_id: type3.id,
            image_url: 'pergamo.png',
            latitud: 52.5212514,
            longitud: 13.3969041,
            zoom: 15,
            image: File.open(File.join(Rails.root, 'app', 'assets','images', 'pergamo.png'), "r"))
site5.user_id = user1.id ; site5.save 



Trip.delete_all

trip1 = Trip.create!(
            name: 'Viaje por Europa',
            description: 'Viaje por capitales europeas',
            date: '2012-04-12')
trip1.user_id = user1.id ; trip1.save 

trip2 = Trip.create!(
            name: 'Sierra de Madrid',
            description: 'Sua al Yelmo en la Pedriza',
            date: '2012-05-18')
trip2.user_id = user2.id ; trip2.save 


Visit.delete_all

visit1 = Visit.create!(
            hour: '10')
visit1.trip_id = trip2.id
visit1.site_id = site1.id ; visit1.save

visit2 = Visit.create!(
            hour: '9')
visit2.trip_id = trip1.id
visit2.site_id = site5.id ; visit2.save

visit3 = Visit.create!(
            hour: '16')
visit3.trip_id = trip1.id
visit3.site_id = site4.id ; visit3.save



