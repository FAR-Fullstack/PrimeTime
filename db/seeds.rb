require "open-uri"

puts "Destroying the db"
Picture.destroy_all
PastEvent.destroy_all
FutureEvent.destroy_all
User.destroy_all

puts "Creating user"
User.create({email: "god@godmode.com", password: "password"})

puts "Creating past events"
file1 = URI.open("https://img.theculturetrip.com/768x432/wp-content/uploads/2018/06/10755629065_9d01ec2793_o.png")
file2 = URI.open("https://i1.wp.com/luxboxcase.com/wp-content/uploads/2019/04/What-Is-Korean-Street-Style105-e1556577387780.png")
file3 = URI.open("https://www.roadaffair.com/wp-content/uploads/2017/10/night-street-seoul-south-korea-shutterstock_578475466-1024x683.jpg")

params1 = {title: "k-pop", description: "stuff good",date_end: Date.today, date_start: Date.today, location: "Paris 1st", category: "Private Event"}
params2 = {title: "k-barbecue", description: "stuff is very much amazing",date_end: Date.today, date_start: Date.today, location: "Paris 16th", category: "Public Event"}
params3 = {title: "k-catwalk", description: "stuff great",date_end: Date.today, date_start: Date.today, location: "Paris 15th", category: "Private Event"}
p1 = PastEvent.new(params1)
p1.photos.attach(io: file1, filename: 'image.png', content_type: 'image/jpg')
p1.save
p2 = PastEvent.new(params2)
p2.photos.attach(io: file2, filename: 'image.png', content_type: 'image/jpg')
p2.save
# p2.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
p3 = PastEvent.new(params3)
p3.photos.attach(io: file3, filename: 'image.png', content_type: 'image/jpg')
p3.save
# p3.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

puts "Creating future events"
FutureEvent.create(params3)
FutureEvent.create(params2)
FutureEvent.create(params1)





puts "Seeding..."
sleep(1)
puts ">"
puts ">"
puts ">"
puts ">"
puts "Wait for it..."
sleep(1)
puts ">"
puts ">"
puts ">"
puts ">"
puts ">"
sleep(1)
puts "...done"


