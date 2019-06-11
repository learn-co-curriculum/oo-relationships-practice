class User 
    attr_accessor :name, :wallet
    @@all = []
    def initialize(name, wallet)
        @name = name
        @wallet = wallet
        @@all << self
    end

    def self.all 
        @@all 
    end

    def create_project(name,goal)
        Project.new(name, goal, self)
    end
    def create_pledge(project,amount)
        Pledge.new(self, project, amount)
    end
    
    def self.highest_pledge
        (Pledge.all.sort_by {|pledge| pledge.amount})[-1].user
    end

    def self.multi_pledger
        multi_hash = {}
        Pledge.all.each do |pledge|
            if multi_hash[pledge.user]
                multi_hash[pledge.user] += 1
            else
                multi_hash[pledge.user] = 1
            end
        end
        multi_arr = multi_hash.find_all{|k,v| v > 1}
        multi_arr.map! {|x| x[0] }
    end

    def self.project_creator
        (Pledge.all.map {|pledge| pledge.project.creator}).uniq
    end
end