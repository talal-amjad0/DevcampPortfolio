# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


3.times do |topic|
    Topic.create!(
        title: "Topic #{topic+1}"
    )
end

puts "3 Topics created"

10.times do |blog|
    Blog.create!(
        title: "My BLog Post #{blog+1}",
        body:"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.",
        topic_id: Topic.last.id
    )
end

puts "10 Blogs created"

5.times do |skill|
    Skill.create!(
        title: "Skill #{skill+1}",
        precent_utilized: 60,
    )
end

puts "5 Skills created"

8.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfilio item: #{portfolio_item+1}",
        subtitle: "Ruby on Rails",
        body: "On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.",
        main_image:"https://placehold.co/600x400",
        thumb_image: "https://placehold.co/350x200",
    )
end

1.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfilio item: #{portfolio_item+1}",
        subtitle: "React",
        body: "On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.",
        main_image:"https://placehold.co/600x400",
        thumb_image: "https://placehold.co/350x200",
    )
end

puts "9 Portfolio items created"

3.times do |technology|
    Technology.create!(
        name: "Technology #{technology+1}"
        portfolio_id: Portfilio.last.id
    )

puts "3 Technologies are created"