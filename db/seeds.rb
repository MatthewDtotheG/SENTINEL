# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bob = User.create(email: 'bob@gmail.com', password: 123)

coolsite = Website.create(name: 'super cool website', user_id: bob.id)

Target.create(browser: 'chrome 66',
  mobile: 'iphone', laptop: 'true', desktop: 'false', ip: "172.92.12.10",
  isp: "verison", city: "New York", country_code: "US", country_name: "United States",
  district: "New York", timezone_name: "America/New_York", postal_code: "65622", currency_code: "USD", website_id: coolsite.id)
