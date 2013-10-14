
require 'spec_helper'

# require nec spec helpers
# require nec controller



describe '/' do

before(:each) do
	@restaurant = Restaurant.create(title: 'Mama')
	@review = Review.create(reviewcontent: "Nice!")
	@restaurant.reviews << @review

end

	it 'should say Yelp' do
		visit '/'
		expect(page).to have_content('yelp')

	end

	it 'should list some restaurants' do
		visit '/' 
		expect(page).to have_content('Mama')
	end

	it 'the restaurant should have a review' do
		visit '/'
		expect(page).to have_content('Nice!')
	end

	it 'should create new restaurant entries' do
		visit '/'
		expect(restaurant).to receive(:newentry)

	end



end






