# require "faker"

# puts "Seeding users..."

# 20.times do |i|
#   User.create(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     email: Faker::Internet.email,
#     password: "pass123word456",
#     username: Faker::Internet.username
#   )
# end

# puts "Seeding questions..."

# 50.times do |i|
#   Question.create(
#     title: Faker::Lorem.sentence(word_count: 5),
#     description: Faker::Lorem.paragraph(sentence_count: 2),
#     user_id: rand(1..20),
#     votes: rand(0..100)
#   )
# end

# puts "Seeding solutions..."

# Question.all.each do |question|
#   10.times do
#     Solution.create(
#       question_id: question.id,
#       user_id: rand(1..20),
#       votes: rand(0..100),
#       description: Faker::Lorem.paragraph(sentence_count: 3)
#     )
#   end
# end

# puts "Seeding bookmarks..."

# 50.times do
#   Bookmark.create(
#     user_id: rand(1..20),
#     question_id: rand(1..50)
#   )
# end

# puts "Seeding done!"

# puts "seeding users"

# user1 = User.create(first_name: "John", last_name: "Doe", email: "john@example.com", password: "123456", username: "Jonnie")
# user1 = User.create(first_name: "Alice", last_name: "Auko", email: "alice@example.com", password: "123456", username: "Alice")
# user1 = User.create(first_name: "Ebenezar", last_name: "Bukosia", email: "ebenezar@example.com", password: "123456", username: "ebbe")

# puts "seeding questions"
# quiz1 = Question.create(title: "How to enable two step auth", description: "I am logged out of canva and i"m requred to enable two step authentification, any help ", user_id: 2, votes:0)
# quiz2 = Question.create(title: "How to deploy rails api in heroku", description: "I need a full guide on how i can deploy my api on heroku", user_id: 1, votes:12)
# quiz3 = Question.create(title: "Can"t login on canva", description: "When i try to log into canva i get responce account does not exist any help?", user_id: 2, votes:12)
# quiz4 = Question.create(title: "Need help on renaming model column on rails ", description: "How can i rename a column on rails ", user_id: 2, votes:54)
# quiz5 = Question.create(title: "Cant access linked in learning", description: "Can seem to be able to log into linked in learning", user_id: 2, votes:33)

# puts "seeding bookmarks..."
# er =Bookmark.create(user_id:2, question_id:2)
# essr =Bookmark.create(user_id:1, question_id:4)
# esr =Bookmark.create(user_id:1, question_id:1)
# essr =Bookmark.create(user_id:2, question_id:3)
# essr =Bookmark.create(user_id:2, question_id:5)


# soln1 = Solution.create(question_id: 1, user_id:2, votes: 122, description: "Here is what you can try...")
# soln2 = Solution.create(question_id: 1, user_id:1, votes: 23, description: "Simple try this..")
# soln3 = Solution.create(question_id: 2, user_id:2, votes: 25, description: "What hav you tried..")
# soln4 = Solution.create(question_id: 2, user_id:1, votes: 52, description: "Helo did you manage...")
# soln5 = Solution.create(question_id: 3, user_id:2, votes: 2, description: "Try this...")

# puts "Seeding done!"

puts 'Seeding Users...'

DEFAULT_PASSWORD = "pass123word456"

users = [
  { first_name: "John", last_name: "Doe", email: "john@example.com" },
  { first_name: "Alice", last_name: "Auko", email: "alice@example.com" },
  { first_name: "Ebenezar", last_name: "Bukosia", email: "ebenezar@example.com" },
  { first_name: "Michael", last_name: "Smith", email: "michael@example.com" },
  { first_name: "Sarah", last_name: "Johnson", email: "sarah@example.com" },
  { first_name: "David", last_name: "Brown", email: "david@example.com" },
  { first_name: "Jessica", last_name: "Davis", email: "jessica@example.com" },
  { first_name: "Chris", last_name: "Miller", email: "chris@example.com" },
  { first_name: "Laura", last_name: "Wilson", email: "laura@example.com" },
  { first_name: "James", last_name: "Moore", email: "james@example.com" },
  { first_name: "Emily", last_name: "Taylor", email: "emily@example.com" },
  { first_name: "Daniel", last_name: "Anderson", email: "daniel@example.com" },
  { first_name: "Kim", last_name: "Thomas", email: "kim@example.com" },
  { first_name: "Matthew", last_name: "Jackson", email: "matthew@example.com" },
  { first_name: "Rachel", last_name: "White", email: "rachel@example.com" },
  { first_name: "Anthony", last_name: "Harris", email: "anthony@example.com" },
  { first_name: "Angela", last_name: "Martin", email: "angela@example.com" },
  { first_name: "George", last_name: "Thompson", email: "george@example.com" },
  { first_name: "Samantha", last_name: "Garcia", email: "samantha@example.com" },
  { first_name: "Steven", last_name: "Martinez", email: "steven@example.com" },
  { first_name: "Ashley", last_name: "Robinson", email: "ashley@example.com" }
]

users.each do |user|
  username = "#{user[:first_name].downcase}#{user[:last_name].downcase}"
  User.create(user.merge(username: username, password: DEFAULT_PASSWORD))
end

puts "Seeding questions"

questions = [
  { title: "How to enable two-step authentication?", description: "I am logged out of Canva and I'm required to enable two-step authentication, any help?", user_id: 2, votes: 0 },
  { title: "How to deploy a Rails API on Heroku?", description: "I need a full guide on how I can deploy my API on Heroku.", user_id: 1, votes: 12 },
  { title: "Can't log into Canva", description: "When I try to log into Canva, I get a response saying the account does not exist. Any help?", user_id: 2, votes: 12 },
  { title: "Need help renaming a model column in Rails", description: "How can I rename a column in Rails?", user_id: 2, votes: 54 },
  { title: "Can't access LinkedIn Learning", description: "I can't seem to log into LinkedIn Learning.", user_id: 2, votes: 33 },
  { title: "How to reset my email password?", description: "I've forgotten my email password and need to reset it.", user_id: 1, votes: 8 },
  { title: "How to change a flat tire?", description: "I have a flat tire, and I need to know how to change it.", user_id: 3, votes: 5 },
  { title: "How to cook quinoa?", description: "What's the best way to cook quinoa?", user_id: 4, votes: 7 },
  { title: "What are the symptoms of anxiety?", description: "How do I know if I have anxiety?", user_id: 5, votes: 10 },
  { title: "How to create a budget?", description: "I want to start budgeting my expenses. Any tips?", user_id: 6, votes: 4 },
  { title: "How to improve my public speaking skills?", description: "I'm nervous about speaking in public. How can I improve?", user_id: 7, votes: 9 },
  { title: "What's the best way to learn a new language?", description: "How can I effectively learn a new language?", user_id: 8, votes: 11 },
  { title: "How to start a small garden?", description: "I want to start a small garden in my backyard. Any advice?", user_id: 9, votes: 6 },
  { title: "What are the benefits of meditation?", description: "I've heard meditation is beneficial. What are the benefits?", user_id: 10, votes: 5 },
  { title: "How to write a resume?", description: "What should I include in my resume?", user_id: 11, votes: 8 },
  { title: "How to effectively manage stress?", description: "What are some techniques to manage stress?", user_id: 12, votes: 7 },
  { title: "How to improve my credit score?", description: "What steps can I take to improve my credit score?", user_id: 13, votes: 10 },
  { title: "How to deal with procrastination?", description: "I'm struggling with procrastination. Any tips?", user_id: 14, votes: 5 },
  { title: "How to cook a steak perfectly?", description: "What’s the best way to cook a steak?", user_id: 15, votes: 4 },
  { title: "How to travel on a budget?", description: "What are some tips for traveling on a budget?", user_id: 16, votes: 6 },
  { title: "How to improve my photography skills?", description: "What techniques can I use to improve my photography?", user_id: 17, votes: 9 },
  { title: "How to prepare for a job interview?", description: "What should I do to prepare for a job interview?", user_id: 18, votes: 7 },
  { title: "How to create a personal website?", description: "What's the best way to create a personal website?", user_id: 19, votes: 10 },
  { title: "How to choose the right health insurance?", description: "What should I consider when choosing health insurance?", user_id: 20, votes: 8 },
  { title: "How to effectively use social media for business?", description: "What are some strategies for using social media for business?", user_id: 1, votes: 10 },
  { title: "How to stay productive while working from home?", description: "What tips do you have for staying productive at home?", user_id: 2, votes: 5 },
  { title: "How to choose a suitable laptop?", description: "What should I consider when buying a laptop?", user_id: 3, votes: 6 },
  { title: "How to maintain a healthy work-life balance?", description: "What are some ways to achieve a healthy work-life balance?", user_id: 4, votes: 8 },
  { title: "How to improve my writing skills?", description: "What can I do to become a better writer?", user_id: 5, votes: 7 },
  { title: "How to learn coding from scratch?", description: "What resources should I use to learn coding?", user_id: 6, votes: 10 },
  { title: "How to prepare for a marathon?", description: "What’s the best way to train for a marathon?", user_id: 7, votes: 5 },
  { title: "How to choose the right diet plan?", description: "What factors should I consider when choosing a diet?", user_id: 8, votes: 4 },
  { title: "How to save money for retirement?", description: "What are some strategies for saving for retirement?", user_id: 9, votes:6 },
  { title: "How to manage my time better?", description: "What techniques can I use to manage my time effectively?", user_id: 10, votes: 8 },
  { title: "How to handle workplace conflict?", description: "What steps should I take to resolve conflict at work?", user_id: 11, votes: 7 },
  { title: "How to make friends in a new city?", description: "What are some tips for making friends after moving?", user_id: 12, votes: 10 },
  { title: "How to deal with burnout?", description: "What strategies can I use to cope with burnout?", user_id: 13, votes: 5 },
  { title: "How to find a mentor?", description: "What should I do to find a mentor in my field?", user_id: 14, votes: 4 },
  { title: "How to start a podcast?", description: "What steps should I follow to start a podcast?", user_id: 15, votes: 6 },
  { title: "How to create engaging content?", description: "What makes content engaging for readers?", user_id: 16, votes: 9 },
  { title: "How to network effectively?", description: "What are some tips for effective networking?", user_id: 17, votes: 7 },
  { title: "How to manage a team remotely?", description: "What strategies can I use to manage my remote team?", user_id: 18, votes: 10 },
  { title: "How to build an online brand?", description: "What should I focus on when building my online brand?", user_id: 19, votes: 5 },
  { title: "How to overcome shyness?", description: "What tips do you have for overcoming shyness?", user_id: 20, votes: 8 }
]

questions.each { |question| Question.create(question) }

puts "Seeding solutions..."

solutions = [
  { question_id: 1, user_id: 2, votes: 122, description: "You can enable two-step authentication by going to your account settings." },
  { question_id: 1, user_id: 1, votes: 23, description: "Try logging in and checking your security settings." },
  { question_id: 2, user_id: 2, votes: 25, description: "Make sure to follow the Heroku documentation for Rails apps." },
  { question_id: 2, user_id: 1, votes: 52, description: "You can use the Heroku CLI to deploy your Rails API." },
  { question_id: 3, user_id: 2, votes: 2, description: "Check if you are using the correct email and password." },
  { question_id: 4, user_id: 1, votes: 18, description: "You can use a migration to rename the column." },
  { question_id: 4, user_id: 2, votes: 15, description: "Try using the change_table method in a migration." },
  { question_id: 5, user_id: 2, votes: 14, description: "Make sure you are entering the correct login details." },
  { question_id: 6, user_id: 1, votes: 19, description: "Visit your email provider’s website for instructions on resetting your password." },
  { question_id: 6, user_id: 3, votes: 11, description: "Check the “Forgot Password” link on the login page." },
  { question_id: 7, user_id: 4, votes: 9, description: "Start by loosening the lug nuts and then lift the car with a jack." },
  { question_id: 7, user_id: 5, votes: 10, description: "Make sure to have a spare tire and all necessary tools ready." },
  { question_id: 8, user_id: 6, votes: 8, description: "Rinse the quinoa under cold water before cooking." },
  { question_id: 8, user_id: 7, votes: 9, description: "Use a ratio of 2:1 water to quinoa for best results." },
  { question_id: 9, user_id: 8, votes: 15, description: "Symptoms can include restlessness and rapid heartbeat." },
  { question_id: 9, user_id: 9, votes: 7, description: "It’s important to talk to a professional if you have these symptoms." },
  { question_id: 10, user_id: 10, votes: 12, description: "Start by listing your income and expenses." },
  { question_id: 10, user_id: 11, votes: 9, description: "Use budgeting apps to help manage your finances." },
  { question_id: 11, user_id: 12, votes: 10, description: "Practice in front of a mirror or with friends." },
  { question_id: 11, user_id: 13, votes: 6, description: "Consider joining a public speaking group like Toastmasters." },
  { question_id: 12, user_id: 14, votes: 8, description: "Use language learning apps like Duolingo or Babbel." },
  { question_id: 12, user_id: 15, votes: 10, description: "Immersing yourself in the language through media can help." },
  { question_id: 13, user_id: 16, votes: 5, description: "Start small with a few pots and gradually expand." },
  { question_id: 13, user_id: 17, votes: 4, description: "Research which plants grow best in your climate." },
  { question_id: 14, user_id: 18, votes: 12, description: "Meditation can reduce stress and improve focus." },
  { question_id: 14, user_id: 19, votes: 11, description: "It’s beneficial for emotional well-being." },
  { question_id: 15, user_id: 20, votes: 10, description: "Include relevant work experience and skills." },
  { question_id: 15, user_id: 1, votes: 8, description: "Make sure to tailor your resume for each job application." },
  { question_id: 16, user_id: 2, votes: 6, description: "Take breaks and set clear goals to manage stress." },
  { question_id: 16, user_id: 3, votes: 5, description: "Consider mindfulness practices for stress management." },
  { question_id: 17, user_id: 4, votes: 7, description: "Use tools like Mint or YNAB to track your finances." },
  { question_id: 17, user_id: 5, votes: 10, description: "Set a savings goal and make a plan to achieve it." },
  { question_id: 18, user_id: 6, votes: 9, description: "Practice speaking in front of small groups." },
  { question_id: 18, user_id: 7, votes: 8, description: "Consider seeking feedback from trusted friends." },
  { question_id: 19, user_id: 8, votes: 10, description: "Use platforms like WordPress or Squarespace for easy setup." },
  { question_id: 19, user_id: 9, votes: 5, description: "Focus on creating quality content to attract visitors." },
  { question_id: 20, user_id: 10, votes: 11, description: "Evaluate your needs and research different plans." },
  { question_id: 20, user_id: 11, votes: 8, description: "Consider both coverage and cost when choosing a plan." },
  { question_id: 21, user_id: 12, votes: 10, description: "Create a content calendar to stay organized." },
  { question_id: 21, user_id: 13, votes: 12, description: "Engage with your audience to keep them interested." },
  { question_id: 22, user_id: 14, votes: 5, description: "Be proactive in addressing conflicts before they escalate." },
  { question_id: 22, user_id: 15, votes: 8, description: "Focus on clear communication and finding common ground." },
  { question_id: 23, user_id: 16, votes: 7, description: "Join community groups or clubs to meet new people." },
  { question_id: 23, user_id: 17, votes: 9, description: "Attend local events or workshops to network." },
  { question_id: 24, user_id: 18, votes: 10, description: "Take time to rest and recharge when feeling overwhelmed." },
  { question_id: 24, user_id: 19, votes: 6, description: "Practice self-care activities to combat burnout." },
  { question_id: 25, user_id: 20, votes: 5, description: "Reach out to professionals in your field for guidance." },
  { question_id: 25, user_id: 1, votes: 4, description: "Attend networking events to meet potential mentors." },
  { question_id: 26, user_id: 2, votes: 10, description: "Choose a podcast topic you are passionate about." },
  { question_id: 26, user_id: 3, votes: 8, description: "Invest in a good microphone and editing software." },
  { question_id: 27, user_id: 4, votes: 12, description: "Use storytelling techniques to engage your audience." },
  { question_id: 27, user_id: 5, votes: 6, description: "Focus on providing value and insights to your listeners." },
  { question_id: 28, user_id: 6, votes: 9, description: "Create a style guide for your brand to maintain consistency." },
  { question_id: 28, user_id: 7, votes: 11, description: "Engage with your audience on social media." },
  { question_id: 29, user_id: 8, votes: 5, description: "Build a strong online presence by sharing valuable content." },
  { question_id: 29, user_id: 9, votes: 7, description: "Utilize SEO strategies to increase visibility." },
  { question_id: 30, user_id: 10, votes: 8, description: "Join online forums or groups related to your niche." },
  { question_id: 30, user_id: 11, votes: 9, description: "Attend industry conferences to network with others." },
  { question_id: 31, user_id: 12, votes: 10, description: "Be patient and practice regularly to improve." },
  { question_id: 31, user_id: 13, votes: 7, description: "Consider working with a therapist for additional support." },
  { question_id: 32, user_id: 14, votes: 5, description: "Understand your audience's needs and preferences." },
  { question_id: 32, user_id: 15, votes: 8, description: "Keep content diverse to appeal to different demographics." },
  { question_id: 33, user_id: 16, votes: 6, description: "Use project management tools to keep your team organized." },
  { question_id: 33, user_id: 17, votes: 10, description: "Set clear goals and expectations for your team." },
  { question_id: 34, user_id: 18, votes: 5, description: "Utilize video conferencing tools to stay connected." },
  { question_id: 34, user_id: 19, votes: 8, description: "Encourage open communication among team members." },
  { question_id: 35, user_id: 20, votes: 10, description: "Leverage social media for brand awareness." },
  { question_id: 35, user_id: 1, votes: 12, description: "Collaborate with influencers to reach a wider audience." },
  { question_id: 36, user_id: 2, votes: 5, description: "Create a professional website to showcase your work." },
  { question_id: 36, user_id: 3, votes: 8, description: "Build a portfolio that highlights your skills." },
  { question_id: 37, user_id: 4, votes: 10, description: "Stay consistent with your posting schedule." },
  { question_id: 37, user_id: 5, votes: 7, description: "Analyze your audience insights to improve content." },
  { question_id: 38, user_id: 6, votes: 9, description: "Practice your pitch in front of a small group." },
  { question_id: 38, user_id: 7, votes: 11, description: "Be clear and concise in your messaging." },
  { question_id: 39, user_id: 8, votes: 10, description: "Focus on user experience when designing your website." },
  { question_id: 39, user_id: 9, votes: 5, description: "Incorporate clear calls to action on your pages." },
  { question_id: 40, user_id: 10, votes: 8, description: "Identify your target audience and tailor your marketing efforts." },
  { question_id: 40, user_id: 11, votes: 9, description: "Analyze competitor strategies for insights." },
  { question_id: 41, user_id: 12, votes: 10, description: "Utilize analytics tools to track user engagement." },
  { question_id: 41, user_id: 13, votes: 8, description: "Set specific goals for your online presence." },
  { question_id: 42, user_id: 14, votes: 5, description: "Engage with your followers to build community." },
  { question_id: 42, user_id: 15, votes: 6, description: "Share behind-the-scenes content to connect with your audience." },
  { question_id: 43, user_id: 16, votes: 7, description: "Understand the unique selling points of your brand." },
  { question_id: 43, user_id: 17, votes: 9, description: "Communicate your brand values clearly to your audience." },
  { question_id: 44, user_id: 18, votes: 8, description: "Utilize email marketing to stay connected with customers." },
  { question_id: 44, user_id: 19, votes: 10, description: "Create a newsletter to keep your audience informed." },
  { question_id: 45, user_id: 20, votes: 6, description: "Encourage customer feedback to improve services." },
  { question_id: 45, user_id: 1, votes: 5, description: "Respond promptly to customer inquiries." },
  { question_id: 46, user_id: 2, votes: 10, description: "Foster a culture of collaboration within your team." },
  { question_id: 46, user_id: 3, votes: 8, description: "Encourage team members to share ideas openly." },
  { question_id: 47, user_id: 4, votes: 7, description: "Develop a unique value proposition for your business." },
  { question_id: 47, user_id: 5, votes: 9, description: "Conduct market research to identify customer needs." },
  { question_id: 48, user_id: 6, votes: 8, description: "Ensure that your website is mobile-friendly." },
  { question_id: 48, user_id: 7, votes: 6, description: "Optimize loading speed to improve user experience." },
  { question_id: 49, user_id: 8, votes: 5, description: "Create a referral program to encourage word-of-mouth marketing." },
  { question_id: 49, user_id: 9, votes: 10, description: "Leverage social proof to build trust with potential customers." },
  { question_id: 50, user_id: 10, votes: 8, description: "Regularly update your content to keep it fresh and relevant." },
  { question_id: 50, user_id: 11, votes: 12, description: "Incorporate visuals to enhance engagement with your audience." },
]

solutions.each { |solution| Solution.create(solution) }

puts "Seeding bookmarks..."

bookmarks = []
(1..50).each do |i|
  (1..20).to_a.sample(5).each do |user_id|
    bookmarks << { user_id: user_id, question_id: i }
  end
end

bookmarks.each { |bookmark| Bookmark.create(bookmark) }

puts "Seeding done!"
