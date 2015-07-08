class EntriesController < ApplicationController

	def index
		now = DateTime.now
		@pr = Project.find(params[:project_id])
		@entries = @pr.entries_for_month(2015, 6)
		@month_hours = @pr.total_hours_in_month(now.month, now.year)
		render ("index")
	end

	def new
		@pr = Project.find params[:project_id]
		@entr = @pr.entries.new
		render("new")
	end
end
