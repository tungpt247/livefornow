#Setup environment
	Rails version: 4.2.0
	Ruby version: 2.1.5
	Postgres database version: 9.4.0

###Create rails app
	$ bundle exec rails new <your name app>


###Config Rspec
	Bootstrap Rspec in Rails
	$ bundle exec rails generate rspec:install

###Config Guard
	Bootstrap guard
	$ bundle exec guard init

###Config Cucumber, Capybara, Poltergeist for acceptance testing
	1. Update phantomjs
	$ brew update && brew install phantomjs

	2. Bootstrap Cucumber in Rails
	$ bundle exec rails generate cucumber:install

Register Capybara driver :poltergeist in features/support/env.rb

	require 'rspec'
	require 'capybara/poltergeist'
	require 'cucumber/rails'

	# Capybara configuration use poltergeist driver
	Capybara.default_wait_time = 8
	Capybara.register_driver :poltergeist do |app|
	  options = {
    	:js_errors => false,
	    :timeout => 120,
    	:debug => false,
	    :phantomjs_options => ['--load-images=no', '--disk-cache=false'],
    	:inspector => true
	  }

	  Capybara::Poltergeist::Driver.new(app, options)
	end

	Capybara.javascript_driver = :poltergeist

###Make database for testing
	bundle exec rake db:migrate RAILS_ENV=test

###Automation testing
	Run just cucumber
	$ bundle exec cucumber features/

	Run just rspec
	$ bundle exec rspec spec/

	To monitoring test running
	$ bundle exec guard

###Integation testing with Travis CI


#User stories
===
As an unregistered user, I want to see the home/landing page
As an administrator, I want to be able to invite users to Loccasions
As an invited user, I want to be able to create an account
As a registered user, I want to be able to create Events
As a registered user, I want to be able to create Occasions
As a registered user, I want to see Occasions on a map

Features:

login with facebook
login with google
login with github

Landing page

Users
	validations:
		- exsit name attribute on User model
		- name is unique
		- name is required

1. Sign up
2. Sign in

Posts

1. Viewing posts
2. Publish a post
3. Edit a post
4. Delete a post

Comments

1. Post a comment

#Spec
===


#References
	https://relishapp.com/rspec/rspec-rails/docs/gettingstarted
	https://cukes.info/install-cucumber-rails.html

