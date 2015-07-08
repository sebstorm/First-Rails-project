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
	def create
		@pr = Project.find(params[:project_id])
		@entr = @pr.entries.new(entry_params)

		if @entr.save
			redirect_to(project_entries_path)
		else
			render("new")
		end
	end

	private

	def entry_params
		return params.require(:entry).permit(:hours, :minutes, :date, :comment )
	end
end
