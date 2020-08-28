# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@user = User.create(username: 'RealBigFish')
@category = Category.create(name: "Cool")
@post = Post.create(title: "So Awesome", content: "Man am I a great blogger OR WHAT!")
@post.categories << @category
Comment.create(content: "This was great!", user: @user, post: @post)

@cat2 = Category.create(name: "Funny")
@post2 = Post.create(title: "Feeling Groovy", content: "I'm feeling so groovy")
@post3 = Post.create(title: 'Feeling Awesome', content: 'This is going to be an awesome post!')

@post2.categories << @category
@post2.categories << @cat2

@post3.categories << @cat2

Comment.create(content: "And another thing, how come there aren't any vegetabls at the movie theater...", user: @user, post: @post)