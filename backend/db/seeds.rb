# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

calendar = Calendar.create!(name: '予定')

5.times do |n|
    Event.create!(name: "予定#{n+1}", start: Time.now, end: Time.now + 1.hour, calendar_id: calendar.id)
end

