namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    Post.create!(username: "Example User",
                 email: "example@example.jp",
                 comment: "掲示板アプリを作っていきましょー！!!")
    100.times do
      username  = Faker::Japanese::Name.name
      email = Faker::Internet.email
      comment  = "クソワロタwww"
      Post.create!(username: username,
                   email: email,
                   comment: comment)
    end
  end
end