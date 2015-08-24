include RandomData

50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
    )
end
posts = Post.all

100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
    )
end


Post.where(title: "Unique Post", body: "This is a unique post.").first_or_create
Comment.where(post: "Unique Post", body: "This is a unique comment.").first_or_create
puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"