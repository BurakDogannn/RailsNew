class AuthorProfilesController < ApplicationController
   before_action :authenticate_author!
	def new
		@authorprofile = AuthorProfile.new
	end
end
