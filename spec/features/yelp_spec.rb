
require 'spec_helper'

# require nec spec helpers
# require nec controller



describe '/' do

before(:each) do
	Restaurant.create(title: 'Mama')

end

	it 'should say Yelp' do
		visit '/'
		expect(page).to have_content('yelp')

	end

	it 'should list some restaurants' do
		visit '/' 

		expect(page).to have_content('Mama')
	end

	it 'each restaurant should have a review' do
		visit '/'

		expect(page).to have_content('Nice!')
	end


end






