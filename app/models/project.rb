class Project 
    attr_accessor :name, :goal, :creator
    @@all = []
    def initialize(name, goal, creator)
        @name = name
        @goal = goal
        @creator = creator
        @@all << self
    end

    def self.all 
        @@all 
    end

    def self.no_pledges
        Project.all - (Pledge.all.map {|pledge| pledge.project }.uniq!)
    end

    def my_pledges
        Pledge.all.select{|pledge| pledge.project == self}
    end

    def total_pledges
        (my_pledges.map{|pledge| pledge.amount}).inject(0,:+)
    end

    def self.above_goal
        Project.all.select {|project| project.goal <= project.total_pledges}
    end

    def self.most_backers
        (Project.all.sort_by {|project| project.my_pledges.length})[-1]
    end
end