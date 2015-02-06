# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Activity.destroy_all
Couple.destroy_all
DateNight.destroy_all
Drink.destroy_all
Event.destroy_all
Favorite.destroy_all
Food.destroy_all

Couple.create({a_fname: "Jenny", a_lname: "Smith", a_age: 27, a_gender: "Female", a_email: "jenny@gmail.com", b_fname: "Jim", b_lname: "Jones", b_age: 27, b_gender: "Male", b_email: "jim@gmail.com", city: "New York", description: "We're cool. Cool cool cool. Go on a date with us!", picture_url: "http://s3-us-west-1.amazonaws.com/static.brit.co/wp-content/uploads/2013/10/10-Beetlejuice.jpg", password: "jennyjim"})

Couple.create({a_fname: "Belinda", a_lname: "Britton", a_age: 32, a_gender: "Female", a_email: "belinda@gmail.com", b_fname: "Bill", b_lname: "Peterson", b_age: 34, b_gender: "Male", b_email: "bill@gmail.com", city: "New York", description: "We like hockey, ice, pucks, and puppies. Go Rangers!", picture_url: "http://s3-ec.buzzfed.com/static/enhanced/webdr06/2013/4/29/12/enhanced-buzz-19589-1367252358-19.jpg", password: "belindabill"})

Couple.create({a_fname: "Marge", a_lname: "Dodderly", a_age: 82, a_gender: "Female", a_email: "gramma@juno.com", b_fname: "Wilson", b_lname: "Wizend", b_age: 84, b_gender: "Male", b_email: "wilson@aol.com", city: "New York", description: "We're just a silly old couple looking for bingo partners", picture_url: "http://i.imgur.com/jFCOMec.jpg", password: "password"})



Food.create({cuisine: "Jamaican"})
Food.create({cuisine: "American"})

Drink.create({base_alcohol: "beer", recommended_drink: "Molson"})
Drink.create({base_alcohol: "rum", recommended_drink: "mojito"})

Activity.create({name: "Rangers game"})
Activity.create({name: "Bocce"})

Event.create({food_id: 1, drink_id: 2, activity_id: 2, event_theme: "Jamaican Me Crazy!", couple_id: 1, times_favorited: 1})
Event.create({food_id: 2, drink_id: 1, activity_id: 1, event_theme: "HOCKEYHOCKEYHOCKEY", couple_id: 2, times_favorited: 1})

Favorite.create({event_id: 1, couple_id: 2})
Favorite.create({event_id: 2, couple_id: 1})

DateNight.create({initiator_id: 1, receiver_id: 2, event_id: 1, meeting_location: "Bryant Park", date_occurred: false})

