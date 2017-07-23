# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# File.open(File.join(Rails.root, 'icare.jpg'))

# Post.create(title: 'NUS i.CARE Seeks Like-minded Individuals', 
#   description: 'A passionate community representing over 1000 international students across 100 countries,
#   NUS i.CARE is looking for like-minded individuals who make the best partners!
#   Come and experience different cultures, perspectives and ideas with us.
#   Join us at SG Kaki and Welcome Fest 2017!',
#   host: 'NUS iCare',
#   :picture => open('icare.jpg'),
#   start_time: Date.strptime("6/15/2012", '%m/%d/%Y'),
#   end_time: Date.strptime("6/15/2012", '%m/%d/%Y'),
#   user_id: 16,
#   signup_link: 'https://mysurvey.nus.edu.sg/EFM/se/54A238577C7ED011',
#   contact_number: 91234567,
#   tag: "Tech")

# Post.create!(title: 'NUS i.CARE Seeks Like-minded Individuals', 
#   description: 'A passionate community representing over 1000 international students across 100 countries,
#   NUS i.CARE is looking for like-minded individuals who make the best partners!
#   Come and experience different cultures, perspectives and ideas with us.
#   Join us at SG Kaki and Welcome Fest 2017!',
#   host: 'NUS iCare',
#   :picture => open('icare.jpg'),
#   start_time: Date.strptime("6/15/2012", '%m/%d/%Y'),
#   end_time: Date.strptime("6/15/2012", '%m/%d/%Y'),
#   user_id: 16,
#   signup_link: 'https://mysurvey.nus.edu.sg/EFM/se/54A238577C7ED011',
#   contact_number: 91234567,
#   tag: "Tech",
#   picture: File.open("#{Rails.root}/app/assets/images/icare.jpg"))
# post1.picture = Pathname.new("./app/assets/images/icare.jpg").open
# post1.save!
