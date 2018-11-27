# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: "かりびと",
profile: "かりびとです。よろしくね",
twitter_url: "http://1234567",
pixiv_url: "http://1234567",
status: "1",
report: "焼肉を求めている",
email: "az@za",
password: "aaa1130",
password_confirmation: "aaa1130",
admin: true)