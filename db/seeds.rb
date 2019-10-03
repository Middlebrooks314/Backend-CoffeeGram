# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Recipe.destroy_all

# user seeds
User.create(username: 'LandonT789', password: 'hello', about: 'UK -> Columbia. COFFEEE is LIFE', image: 'https://images.unsplash.com/photo-1487309078313-fad80c3ec1e5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80')

User.create(username: 'Byunski88', password: 'hello', about: 'Skiing, Coffee, Puppies. In that order', image:'https://media.licdn.com/dms/image/C5103AQGn4AilTiLyJQ/profile-displayphoto-shrink_800_800/0?e=1574294400&v=beta&t=cj4CalA0bDQ_m03p7Aws9HnYZK4MHiyr6CIMXvtYZUM')

User.create(username: 'Mal1015', password: 'hello', about: 'I like to brew coffee mostly on Sundays' , image: 'https://yt3.ggpht.com/a/AGF-l79hYQ9eWf4jldmJ2bG04bvEkSJQfGCrLxEOfA=s900-c-k-c0xffffffff-no-rj-mo',)

User.create(username: 'StellaMae17', password: 'hello', about: 'Pizza, Coffee, Park' , image:'https://images.unsplash.com/photo-1549109265-2e1df6bd2d49?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=562&q=80')

User.create(username: 'Peis&Coffee02', password: 'hello', about: 'Pineappples definitely on pizza, would try coffee at least... everytime?' , image:'https://images.unsplash.com/photo-1522039824777-f813e0c1448f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=633&q=80')

User.create(username: 'Marlyho', password: 'hello', about: 'EDM Baby Shark is my theme song!', image: 'https://www.gailgoldenconsulting.com/wp-content/uploads/2015/11/Marlene-Ho.jpg')

User.create(username: 'DictatorLovesMattress', password: 'hello', about: 'Go Pack Go, the vikings make me feel the same as 3 day old diner coffee', image: 'https://www.astutesecurity.net/astutestatic/wp-content/uploads/2018/12/IMG-6972-3-191x300.jpg')

User.create(username: 'sneakstar', password: 'hello', about: 'Sneakers, Villager, Ramen, Living my best fanny pack life', image: 'https://images.squarespace-cdn.com/content/v1/550da595e4b0c3aa90da6ca8/1471229173043-NLUAZ6HMF9GI03VPCYB8/ke17ZwdGBToddI8pDm48kDOIzgSRaFzWBus_dSRG1_VZw-zPPgdn4jUwVcJE1ZvWhcwhEtWJXoshNdA9f1qD7Xj1nVWs2aaTtWBneO2WM-v0Ubj9QrsAO5uj2zxZ1VUmEcB04KSWqFSeb1aYL5Sj_g/image-asset.jpeg')

User.create(username: 'helloitsgrace', password: 'hello', about: 'Kiwi', image: 'https://pbs.twimg.com/profile_images/1145031321170976769/LzLsOAWt.png')

User.create(username: 'rothberry', password: 'hello', about: 'Bless Up', image: 'https://pbs.twimg.com/profile_images/1129211505155567617/tar-tIQG_400x400.jpg')



# recipe seeds

Recipe.create(title: 'Stumptown Coffee Aeropress', method: 'Aeropress', coffee: 17, water: 220, watertemp: 205, grindsize: 'medium-fine' , time: '2:00', instructions: 'Measure and grind 17g of coffee — one rounded AeroPress spoonful or about 2 ½ Tablespoons. Grind the coffee about as fine as table salt. Get the AeroPress ready to brew by placing the filter in the basket. Next, preheat the brewer and rinse the filter with hot water. This gets rid of any paper flavor and warms everything up. Heat up your mug with hot water while you’re at it. Discard the rinse water from your mug. Affix the basket to the bottom of the brew chamber and place it on top of the mug. If it’s handy, use the funnel (or coffee loader) that comes with the AeroPress to add 17g of coffee. Then, remove the funnel. Start your timer when you pour hot water (just off the boil or about 205°F) into your brewer. Saturate all the grounds within 10 seconds. Pour to the No. 4 or 220g of water if you’re using a scale. Spin the chamber, making sure all the coffee is saturated. Once you hit the No. 4, stir the “slurry” (coffee and water mixture) and place the plunger on the brew chamber and pull up slightly to create a pressure seal. Don’t plunge yet! At 1:15, remove the pressure seal and give the slurry another stir with a spoon or paddle. Put the plunger back on and gently press down with steady pressure, stopping as soon as you hear a hissing sound. This entire brew process should take just under two minutes and yield seven to eight ounces of coffee. The AeroPress is easy to clean. Simply take off the basket and pop out the coffee grounds and filter. Clean the rubber plunger with hot kettle water and you’re ready for your next brew.', image:'https://images.unsplash.com/photo-1496198183329-402041b2487b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=816&q=80', user_id: 3, notes: 'Grind size 12 on a Baratza Encore.')

Recipe.create(title: 'Stumptown Coffee Chemex' , method:'Chemex', coffee: 42, water: 700, watertemp: 205, grindsize: 'medium', time: '4:00', instructions: 'Place the Chemex Filter in the brewer with single fold away from the spout and multiple folds lined up against the spout. Rinse the filter with hot water to get a nice even seal all the way around. This preheats the brewer and gets rid of any paper flavor from the filter. Dump the rinse water and fold the filter toward the spout to reinforce this area. Add 42g or about 6 Tablespoons of coffee ground kind of like Kosher salt. Center the coffee in your brewer and zero out the scale. Start the timer when you add the hot water. Pour until all the grounds are saturated or until you reach about 150g. Stir with a chopstick or spoon to make sure there are no dry clumps. At :45, start the second pour, making sure to reintegrate the coffee and water. Pour with a wiggling motion, then a gentle spiral until the volume reaches about a fingertip down from the top of the rim or 450g of water. Pour over the dark spots and avoid the light ones. At 1:45, fill the brewer flush to the top or about 700g of water. At 4:00, you should be pretty close to volume. Look at the glass bubble or belly button, which indicates 20 ounces. Lift the filter. It’s okay to hover for a couple of seconds to make sure you have enough volume. Then pull the filter out completely and let it drain into the sink. Swirl the Chemex around a little and you’re ready to serve two cups of brewed coffee.',image: 'https://images.unsplash.com/photo-1500557515707-69f05f65df7d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80', user_id: 1, notes: 'Grind size 20 on a Baratza Encore.' )

Recipe.create(title: 'Stumptown V60', method: 'Hario V60', coffee: 21, water: 360, watertemp: 205, grindsize: 'medium', time: '3:00', instructions: 'Fold the filter into a cone shape and rinse it in the Hario dripper with water just off the boil (about 205°F) to eliminate paper flavor and to heat up the mug or carafe you are brewing into. Discard the rinse water. Grind 21 grams (about 3 Tablespoons) of coffee to be about as fine as kosher salt. Add coffee to your brewer. Saturate the grounds with water right off the boil (about 205°F). Use just enough water to cover the grounds. Let it bloom for 15 seconds. Coffee de-gasses or “blooms” when it’s fresh–the coffee bed should raise up and bubble a bit. Pour water in a slow, even spiral, adding water every 10 – 15 seconds for an even extraction. Pour over the dark spots and avoid the light ones. If youre using a scale, you should pour until you reach 360 g. Once you hit 3:00, you should have about 10 oz of brewed coffee. Remove the brewer and pour the coffee into a warm mug.', image: 'https://images.unsplash.com/photo-1521118644733-b6e391688cb9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=966&q=80', user_id: 2, notes: 'Grind size 14 on a Baratza Encore.')

Recipe.create(title: 'Stumptown French Press', method: 'French Press', coffee: 56, water: 205, watertemp: 860, grindsize: 'coarse', time:'4:00', instructions: 'Warm up your empty French Press by rinsing it with very hot water. This helps maintain the temperature while brewing for best extraction. Measure out 56g (about 8 Tablespoons) of coffee and grind it as coarse as breadcrumbs. Now that your French Press is warmed up, discard the hot water and add coffee into the empty press. Start your count-up timer as soon as you add hot water. Fill it up halfway to the top saturating all the grounds, making sure that there are no dry spots. At 1:00, use a wooden spoon or spatula to break the top layer we call the crust. We prefer to use wood and not metal so you don’t accidentally crack the glass. Give it a good stir. Now, fill it all the way to the top with water. Put the top on and allow the coffee to brew without pressing it down. At 4:00, you are ready to press. Firmly push the press all the way down. Serve it up. Pour coffee into a carafe immediately to avoid over extraction. If the coffee sits on the grounds too long, it continues to extract and will become bitter. To clean the French Press, we find it easiest to add a little water to the grounds, give it a good swirl, and empty into the trash or compost bin.' , image: 'https://images.unsplash.com/photo-1519082274554-1ca37fb8abb7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80', user_id: 4, notes: 'Grind size 28 on a Baratza Encore.')



