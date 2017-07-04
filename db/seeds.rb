require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
10.times do
  article = Article.new(
    name: Faker::Lorem.words(5).join(" "),
    content: Faker::Lorem.paragraphs(3).join(" ")
  )
  article.save!
end
