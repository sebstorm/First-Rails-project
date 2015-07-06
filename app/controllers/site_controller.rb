class SiteController < ApplicationController
	def home
		render 'home'  #name of biew template    name action after view 
	end

	def conatct
		render 'conatct'
	end
end
