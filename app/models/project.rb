class Project < ActiveRecord::Base
	def self.retrieve
		Project.where("created_at > ?", 1.month.ago).limit(10).order("name ASC")
	end

end
