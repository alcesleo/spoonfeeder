# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.create(name: 'admin', password: 'seed', password_confirmation: 'seed')
post = Post.create(title: 'Hello Rails!', entry: 'This is the first blog entry using seeds.rb')
post.user = admin
comment = Comment.create(comment_entry: 'admin made this comment')
anotherComment = Comment.create(comment_entry: 'admin made this comment')
comment.post = post
comment.user = admin
anotherComment.post = post
anotherComment.user = admin
