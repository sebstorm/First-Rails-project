class Project < ActiveRecord::Base

	has_many(:entries)
	
		validates :name, uniqueness: true
		validates :name, presence: true
		validates :name, length: {maximum: 30}
		

	def self.retrieve
		Project.where("created_at > ?", 1.month.ago).limit(10).order("name ASC")
	end

	def self.last_created(number)
		Project.order(:created_at => :desc).limit(number)
	end

	def entries_for_month(year, month)
		start = DateTime.new(year, month, 1)
		cutoff = start + 1.month

		self.entries.where("date > ?", start ).where("date < ?", cutoff)
	end

	def total_hours_in_month(month, year)

		
		hours = entries.reduce(0) do |sum, entry|
				sum + entry.hours
			end
		minutes = entries.reduce(0) do |sum, entry|	
				sum + entry.minutes
			end
			return hours + (minutes)/60.0
	end


end



