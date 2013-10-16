require 'bcrypt'

class User <ActiveRecord::Base

has_many :reviews


	def password=(password)
		self.password_digest = BCrypt::Password.create(password)
	end

	include DataMapper::Resource

	property :id, Serial
	property :email, String
	property :password, Text
	property :password_digest, Text


	# config.autoload_paths += %W( #{config.root}/lib )

	def User.authenticate(email, password)
  	# that's the user that's trying to sign in
    user = first(:email => email)
	    if user && BCrypt::Password.new(user.password_digest) == password
	     user
	    else
	      nil
	    end

  	end
end