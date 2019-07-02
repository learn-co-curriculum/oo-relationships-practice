class User

attr_accessor :name

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end	

	def pledges
		Pledge.all.select {|p| p.pledger == self}
	end

	def projects
		pledges.map {|p| p.project}
	end

	def self.highest_pledge
		Pledge.all.max {|p, b| p.money <=> b.money}.pledger
	end	

	def self.multi_pledger
		all.select {|u| u.pledges.size > 1}
	end

	def self.project_creator(project)
		all.select {|u| u.projects.include?(project)}
	end
	
end