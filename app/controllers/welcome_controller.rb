class WelcomeController < ApplicationController
	def index
	  @countries = Country.all.order(:position)
	  @years = Year.all
	end
end
