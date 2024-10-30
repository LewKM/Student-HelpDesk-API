require 'faker'

puts 'Seeding users...'

20.times do |i|
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: '123456',
    username: Faker::Internet.username
  )
end

puts 'Seeding questions...'

50.times do |i|
  Question.create(
    title: Faker::Lorem.sentence(word_count: 5),
    description: Faker::Lorem.paragraph(sentence_count: 2),
    user_id: rand(1..20),
    votes: rand(0..100)
  )
end

puts 'Seeding solutions...'

Question.all.each do |question|
  5.times do
    Solution.create(
      question_id: question.id,
      user_id: rand(1..20),
      votes: rand(0..100),
      description: Faker::Lorem.paragraph(sentence_count: 3)
    )
  end
end

puts 'Seeding bookmarks...'

50.times do
  Bookmark.create(
    user_id: rand(1..20),
    question_id: rand(1..50)
  )
end

puts 'Seeding done!'
