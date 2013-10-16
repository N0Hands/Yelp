
require 'spec_helper'

# require nec spec helpers
# require nec controller



describe '/' do

before(:each) do
	@restaurant = Restaurant.create(title: 'Mama')
	@review = Review.create(reviewcontent: "Nice!")
	@restaurant.reviews << @review

end

	it 'should say Yelp!' do
		visit '/'
		expect(page).to have_content('Yelp!')

	end

	it 'should list some restaurants' do
		visit '/' 
		expect(page).to have_content('Mama')
	end

end


describe 'User' do 

	before(:each) do
		@user = User.new(username: 'Foodie')
		@user.save
	end

	it 'should have a username' do
		expect(@user.username).to_eq :username
	end


end



