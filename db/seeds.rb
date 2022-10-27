# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'date'
require "faker"
require "open-uri"

Lesson.destroy_all

lesson1 = Lesson.new(
  name: "Corso in Presenza",
  description: Faker::Lorem.paragraph(sentence_count: 10),
  online: false,
  address: "Via Giuseppe Ferrari 5/A, 20900 Monza",
  price: 0.0,
  level: "adatto a tutti",
  when: "tutti i Martedì e Giovedì dalle 20:00 alle 21:00"
)

lesson1.save

lesson2 = Lesson.new(
  name: "Corso Online",
  description: Faker::Lorem.paragraph(sentence_count: 10),
  online: true,
  address: "Ovunque nel mondo, basta avere Skype e una connessione ;)",
  price: 5,
  level: "adatto a tutti",
  when: "tutti i Mercoledì dalle 19:00 alle 20:00"
)

lesson2.save
