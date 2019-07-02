class Project

attr_accessor :name, :owner, :goal_amount

	@@all = []

	def initialize(name, owner, goal_amount)
		@name = name
		@owner = owner
		@goal_amount = goal_amount
		@@all << self
	end

	def self.all
		@@all
	end	

	def pledges
		Pledge.all.select {|p| p.project == self}
	end

	def users
		pledges.map {|p| p.pledger}
	end

	def self.no_pledges
		all.select {|p| p.pledges == []}
	end

	def self.above_goal
		all.select {|p| p.pledges.sum {|pl| pl.money} > p.goal_amount}
	end
	
	def self.most_backers
		nums = all.map{|p| p.users.size}
		puts nums
		index = nums.index(nums.max {|a, b| a<=>b})
		all[index]
	end
	
end