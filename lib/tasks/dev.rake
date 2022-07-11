namespace :dev do
  desc "TODO"
  task setup: :environment do

    kinds = %w(Amigo Comercial Conhecido)
    kinds.each do |kind|
      Kind.create!(
        description: kind
      )
    end
    100.times do |i|
      Contact.create!(
        name: Faker::Name.name,
        email:Faker::Internet.email,
        birthdate: Faker::Date.between(from: '2014-09-23', to: '2014-09-25'),
        kind: Kind.all.sample,
      )
    end
     
  end
end
