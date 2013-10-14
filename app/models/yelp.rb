class Yelp < ActiveRecord::Base

has_many :restaurants, :reviews


end