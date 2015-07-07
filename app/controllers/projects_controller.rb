class ProjectsController < ApplicationController
	def index
		@projects = Project.last_created(10)
		
		render("index")
	end

	def show
		@pr = Project.find_by(:id => params[:id])

		if @pr.nil?
				render("project_not_found", :status => 404)
			else
				render("show")
			end
	end

end
