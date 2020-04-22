puts "Destroying the db"
PastEvent.destroy_all
FutureEvent.destroy_all
Picture.destroy_all
User.destroy_all

puts "Creating user"
User.create({email: "god@godmode.com", password: "password"})

puts "Creating past events"

params1 = {title: "k-pop", description: "stuff good",date_end: Date.today, date_start: Date.today, location: "Paris 1st"}
params2 = {title: "k-barbecue", description: "stuff amazing",date_end: Date.today, date_start: Date.today, location: "Paris 16th"}
params3 = {title: "k-catwalk", description: "stuff great",date_end: Date.today, date_start: Date.today, location: "Paris 15th"}
p1 = PastEvent.create(params1)
p2 = PastEvent.create(params2)
p3 = PastEvent.create(params3)

puts "Creating future events"
FutureEvent.create(params3)
FutureEvent.create(params2)
FutureEvent.create(params1)

puts "Creating pictures"
Picture.create(link: "https://unsplash.com/photos/4f4YZfDMLeU", past_event_id: p1.id)
Picture.create(link: "https://unsplash.com/photos/UZI_guz1kJQ", past_event_id: p1.id)
Picture.create(link: "https://unsplash.com/photos/hipcPLJE4uk", past_event_id: p2.id)
Picture.create(link: "https://unsplash.com/photos/VZG8SrrOcs4", past_event_id: p3.id)
Picture.create(link: "https://unsplash.com/photos/_Jhg2NTkATM", past_event_id: p1.id)
