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

Couple.create({a_fname: "Jenny", a_lname: "Smith", a_age: 27, a_gender: "Female", a_email: "jenny@gmail.com", b_fname: "Jim", b_lname: "Jones", b_age: 27, b_gender: "Male", b_email: "jim@gmail.com", city: "New York", description: "We're cool. Cool cool cool. Go on a date with us!", avatar: "http://s3-us-west-1.amazonaws.com/static.brit.co/wp-content/uploads/2013/10/10-Beetlejuice.jpg", password: "password", username:"jennyjim"})

Couple.create({a_fname: "Belinda", a_lname: "Britton", a_age: 32, a_gender: "Female", a_email: "belinda@gmail.com", b_fname: "Bill", b_lname: "Peterson", b_age: 34, b_gender: "Male", b_email: "bill@gmail.com", city: "New York", description: "We like hockey, ice, pucks, and puppies. Go Rangers!", avatar: "http://s3-ec.buzzfed.com/static/enhanced/webdr06/2013/4/29/12/enhanced-buzz-19589-1367252358-19.jpg", password: "password", username: "belindabill"})


Food.create({cuisine: "Jamaican", picture_url: "http://www.windiestrading.com/wp-content/uploads/2011/11/jerk_chicken.jpg"})
Food.create({cuisine: "Burgers", picture_url: "http://pngimg.com/upload/burger_sandwich_PNG4133.png"})
Food.create({cuisine: "Italian", picture_url: "http://belliniitaliana.com/wp-content/uploads/2014/05/food2.jpg"})
Food.create({cuisine: "Indian", picture_url: "http://tajindiancuisineaz.com/wp-content/uploads/2013/09/Indian_food_az_2.png"})
Food.create({cuisine: "Chinese", picture_url: "http://www.northjersey.com/polopoly_fs/1.698215!/fileImage/httpImage/chinesefood-050913-sb-tif.jpg"})
Food.create({cuisine: "Mexican", picture_url: "http://1.bp.blogspot.com/-P2CuLiqaFwA/Ux9ILrjIQAI/AAAAAAAADqY/go4ibiUTV6Y/s1600/MexicanFoodTacos.jpg"})
Food.create({cuisine: "Mediterranean", picture_url: "http://www.zameencuisine.com/wp-content/gallery/home-gallery/greek-salad.jpg"})
Food.create({cuisine: "Sushi", picture_url: "http://utahcitylinks.com/kobe2/wp-content/uploads/2013/12/sushi.jpg"})
Food.create({cuisine: "Hawaiian", picture_url: "http://www.tastyislandhawaii.com/images/poi_powder_sm_plate.jpg"})
Food.create({cuisine: "Barbecue", picture_url: "http://www.bonappetit.com/wp-content/uploads/2013/06/texas-style-smoked-brisket.jpg"})
Food.create({cuisine: "Tapas", picture_url: "http://leeds-list.com/wp-content/uploads/2013/11/stock-tapas-web-668x341.jpg"})

Couple.create({a_fname: "Marge", a_lname: "Dodderly", a_age: 82, a_gender: "Female", a_email: "gramma@juno.com", b_fname: "Wilson", b_lname: "Wizend", b_age: 84, b_gender: "Male", b_email: "wilson@aol.com", city: "New York", description: "We're just a silly old couple looking for bingo partners", avatar: "http://inspire52.com/wp-content/uploads/2013/12/EllieandCarlUp.jpg", password: "password", username: "margiewill"})


Drink.create({base_alcohol: "beer", recommended_drink: "Molson", picture_url: "http://www.molsoncanadian.ca/~/media/Canadian/assets/images/mc_bottle.ashx"})
Drink.create({base_alcohol: "rum", recommended_drink: "mojito", picture_url: "http://truvia.com/images/uploads/detail_Skinny_Mojito.png"})
Drink.create({base_alcohol: "tequila", recommended_drink: "margarita", picture_url: ""})
Drink.create({base_alcohol: "wine", recommended_drink: "Riesling", picture_url: ""})
Drink.create({base_alcohol: "vodka", recommended_drink: "white Russian", picture_url: ""})
Drink.create({base_alcohol: "Kahlua", recommended_drink: "sombrero", picture_url: ""})
Drink.create({base_alcohol: "gin", recommended_drink: "gin and tonic", picture_url: "http://www.cocktailtimes.com/original/jose_clasico/top_invisible.jpg"})
Drink.create({base_alcohol: "tequila", recommended_drink: "tequila sunrise", picture_url: "http://www.tequilawhisperer.com/wordpress/wp-content/uploads/2011/08/tequila_sunrise.jpg"})
Drink.create({base_alcohol: "all", recommended_drink: "Long Island iced tea", picture_url: "http://liquor.s3.amazonaws.com/wp-content/uploads/2013/07/Long-Island-Iced-Tea.jpg"})
Drink.create({base_alcohol: "rum", recommended_drink: "dark and stormy", picture_url: "http://images.media-allrecipes.com/userphotos/250x250/00/93/15/931530.jpg"})

Activity.create({name: "Rangers game", picture_url: "http://www.nationalsportsbeat.com/images/logos/nhl/New_York_Rangers.jpg"})
Activity.create({name: "Bocce", picture_url: "http://www.balharbourshops.com/media/k2/galleries/1206/02.Belkys%20Nerey%20playing%20bocce%20ball.jpg"})
Activity.create({name: "ice skating", picture_url: "http://lowres-picturecabinet.com.s3-eu-west-1.amazonaws.com/43/main/19/97834.jpg"})
Activity.create({name: "ping pong", picture_url: "http://i.dailymail.co.uk/i/pix/2012/12/21/article-2251517-169B9038000005DC-29_634x424.jpg"})
Activity.create({name: "movie", picture_url: "http://havingtime.com/wp-content/uploads/2014/03/watch-movie.jpg"})
Activity.create({name: "line dancing", picture_url: "http://imbibethenight.com/wp-content/uploads/2015/02/109340_55412_155_line_dancing.jpg"})
Activity.create({name: "pool", picture_url: "http://drinkedin.r.worldssl.net/images/easyblog_images/62/2e1ax_vintage_entry_pool-bar.jpg"})
Activity.create({name: "Broadway show", picture_url: "http://d3rm69wky8vagu.cloudfront.net/article-photos/large/1.164206.jpg"})
Activity.create({name: "the opera", picture_url: "http://4.bp.blogspot.com/-zuG_qz5wa1E/T3bywALg-qI/AAAAAAAAAJY/aQ9VmC3uDQ0/s1600/state+opera+2.jpg"})
Activity.create({name: "comedy show", picture_url: "http://www.livingthelist.com/wp-content/uploads/2012/07/comedy-cellar.jpeg"})

Event.create({food_id: 1, drink_id: 2, activity_id: 2, event_theme: "Jamaican Me Crazy!", couple_id: 1, times_favorited: 1})
Event.create({food_id: 2, drink_id: 1, activity_id: 1, event_theme: "HOCKEYHOCKEYHOCKEY", couple_id: 2, times_favorited: 1})

Favorite.create({event_id: 1, couple_id: 2})
Favorite.create({event_id: 2, couple_id: 1})

DateNight.create({initiator_id: 1, receiver_id: 2, event_id: 1, meeting_location: "Bryant Park", start_date: Time.now, date_occurred: false})

