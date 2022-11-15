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
  name: "Corsi Hatha Yoga in presenza",
  description: "Pratica con me in presenza presso la palestra 247Days di Monza. Avvicinati a questa disciplina e approfondiscila in un piccolo gruppo",
  online: false,
  address: "Palestra 247Days, via Ferrari 5, Monza",
  price: 0.0,
  level: "adatto a tutti",
  when: "tutti i Martedì e Giovedì dalle 20:00 alle 21:00"
)

lesson1.save

lesson2 = Lesson.new(
  name: "Corsi Hatha Yoga Online",
  description: "Pratica yoga nella privacy di casa, ma live su Skype con la compagnia virtuale di un gruppo. Il corso è aperto a tutti i livelli.",
  online: true,
  address: "via Skype",
  price: 5,
  level: "adatto a tutti",
  when: "tutti i Mercoledì dalle 19:00 alle 20:00"
)

lesson2.save
