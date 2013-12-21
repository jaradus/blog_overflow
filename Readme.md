
##Morning Exercise 

###Part 1
- Navigate to `~/Documents/ga_wdi/projects`
- Create a folder called `my_face`
- **This is NOT in your work folder!**
- Within this folder, build a Sinatra applications:
	- use the filename `main.rb` for your controller
	- a `get` request to `/` should:
		- display your name
			- Example: 
				- `Neel Patel`
		- display a list of things you do
			- Example:
				- `Play guitar', 'Code in Ruby', 'Snowboard'
		- display a picture of yourself			
		- clicking on this picture should: 
			- make a `get` request to '\contact'
		- display anything else you would like to add
	- a `get` request to '/contact' should
		- diplay your name
		- diplay your email address
		- diplay your twitter handle
	- ***Add some CSS!*** 
		

###Part 2
- Create a new `config.ru` file in your `my_face/` folder
	
#####config.ru:

require './main'

run Sinatra::Application

###Part 3
- Create a new `Gemfile` file in your `my_face/` folder

#####Gemfile:
```
source "https://rubygems.org"
ruby "2.0.0"
gem 'sinatra'
```
- Be sure ***NOT*** to add sinatra-reloader
- In your terminal do:
```
bundle install
```

###Part 4

Go to ```www.github.com``` and ```CREATE NEW REPOSITORY``` 

- Give it a name of my_face

In terminal do:

- git init
- git add -A
- git commit -m "my first commit"
- git remote add origin ```[GITHUB REPOSITORY URL]```
- Do git remote -v to ensure the remote has been added.  If it has, do the following:
	- git push origin master 
- Go back to your Github and ensure that the folder has been pushed up

###Part 5

In your terminal do:

- ```bundle exec rackup -p 4567```.  This will ensure you are ready for Heroku

###Part 6

In terminal do:

- heroku create 
- git remote -v
	- Ensure that a remote to heroku has been added 
- git push heroku master
- heroku ps
	- Confirm that the dyno is running and has not crashed

###Part 7

***SHARE YOUR APP!***

- paste a link in Hipchat (not optional)
- Send it to your parents (optional)



___


#BlockOverflow

### Code Blog

Make a **Code Blog** using the following specs:

- The Code Blog should be hosted on Heroku and be publicly accessible by anyone else that knows the URL.
- The "/" and "/posts" route should display all posts.
- There should also be additional routes for Editing, Creating and Deleting posts available to one designated User.
- Newest posts should be visible at the top.
- Each post should be in a DIV with the class "block_overflow" (additional classes can be included)

```
<div class="block_overflow post">
	<h1>Title of Post Goes Here</h1>
	<p>Body of Post Goes here</p>
</div>

```

- Posts must accept syntax-highlighted code in their bodies as an **option** in addition to plain-text bodies.  Please use the CodeRay Gem for generating syntax highlighted code:

[Code Ray Gem](http://coderay.rubychan.de/)


### BlockOverflow

When you are done, register your blog with with the BlockOverflow feed:

[BlockOverflow Feed Registration](http://block-overflow.herokuapp.com/feed)

##### BONUS CHALLENGE:

Make BlockOverflow better by Forking the project and sending us a Pull Request:

[BlockOverflow Source Code](https://github.com/omardelarosa/block_overflow)