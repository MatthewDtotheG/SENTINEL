# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bob = User.create(first_name: 'Matt', last_name: 'Garrett', email: 'bob@gmail.com', password: '123', password_confirmation: '123')

coolsite = Website.create(name: 'CURSR CO', user_id: bob.id)


Target.create(browser: 'Chrome',
  mobile: 'android', laptop: 'false', desktop: 'false', ip: "172.92.12.10",
  isp: "Verizon Communications", city: "New York", country_code: "US", country_name: "United States",
  district: "New York", timezone_name: "America/New_York", postal_code: "65622", currency_code: "USD", website_id: 1)

Target.create(browser: 'Chrome',
    mobile: 'null', laptop: 'true', desktop: 'false', ip: "172.92.12.10",
    isp: "Verizon Communications", city: "Dover", country_code: "UK", country_name: "United Kingdom",
    district: "Dover", timezone_name: "United Kingdom", postal_code: "65622", currency_code: "GBP", website_id: 1)

  Target.create(browser: 'Chrome',
    mobile: 'null', laptop: 'false', desktop: 'true', ip: "172.92.12.10",
    isp: "Verizon Communications", city: "Springfield", country_code: "US", country_name: "United States",
    district: "Dallas County", timezone_name: "America/Missouri", postal_code: "65622", currency_code: "USD", website_id: 1)
