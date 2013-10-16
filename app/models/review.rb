class Review < ActiveRecord::Base

	belongs_to :restaurant, :user


end
