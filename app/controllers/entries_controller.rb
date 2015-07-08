class EntriesController < ApplicationController

	def index
		now = DateTime.now
		@pr = Project.find(params[:project_id])
		@entries = @pr.entries_for_month(2015, 7)
		@month_hours = @pr.total_hours_in_month(now.year, now.month)
		render ("index")
	end

	def new
		@pr = Project.find params[:project_id]
		@entr = @pr.entries.new
		render("new")
	end
	def create
		@pr = Project.find(params[:project_id])
		@entr = @pr.entries.new(entry_params)

		if @entr.save
			redirect_to(project_entries_path)
		else
			render("new")
		end
	end

	def edit
		@pr = Project.find params[:project_id]
		@entr = @pr.entries.find(params[:id])
		render("edit")
	end
	def update
		@pr = Project.find params[:project_id]
		@entr = @pr.entries.find(params[:id])
			if @entr.update_attributes(entry_params)
				redirect_to(project_entries_path)
			else
				render("edit")
			end

		# @entr = @pr.entries.find(params[:id])
		# 	if @entr.save
		# 		redirect_to(project_entries_path)
		# 	else
		# 		render("edit")
		# 	end	

		#retrieve the entry from the databases
		#if input is valid, update
			#redirect to list of entries for project
		#otherwise show errors to user
			#show the edit form again
	end

	private

	def entry_params
		return params.require(:entry).permit(:hours, :minutes, :date, :comment )
	end
end
