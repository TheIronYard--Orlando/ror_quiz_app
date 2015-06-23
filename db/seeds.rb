# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Manufacturer.destroy_all
CarModel.destroy_all
Factory.destroy_all

ford = Manufacturer.create(name: 'Ford', domestic: true)
toyota = Manufacturer.create(name: 'Toyota', domestic: false)

fusion = ford.car_models.create(name: 'Fusion', mpg: 41, price: 26600)
mustang = ford.car_models.create(name: 'Mustang', mpg: 31, price: 23800)

flat_rock = ford.factories.create(city: 'Flat Rock', state: 'MI', unionized: false)

flat_rock.car_models << fusion
flat_rock.car_models << mustang

f_150 = ford.car_models.create(name: 'F-150', mpg: 26, price: 26100)

dearborn = ford.factories.create(city: 'Dearborn', state: 'MI', unionized: false)
claycomo = ford.factories.create(city: 'Claycomo', state: 'KS', unionized: false)

claycomo.car_models << f_150
dearborn.car_models << f_150

# both the Fusion and the Mustang are made in Flat Rock
# the F-150 is made in both Dearborn and Claycomo

tupelo = toyota.factories.create(city: 'Tupelo', state: 'MS')
georgetown = toyota.factories.create(city: 'Georgetown', state: 'KY')
lafayette = toyota.factories.create(city: 'Lafayette', state: 'IN')

corolla = toyota.car_models.create(name: 'Corolla', mpg: 42, price: 16950)
camry = toyota.car_models.create(name: 'Camry', mpg: 35, price: 22970)

tupelo.car_models << camry
georgetown.car_models << corolla
lafayette.car_models << corolla
# Corollas are made in Tupelo; Camrys are made in Georgetown and Lafayette
