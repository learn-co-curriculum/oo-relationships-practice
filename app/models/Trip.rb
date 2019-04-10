class Trip
    @@all=[]
    attr_accessor :listing, :guest
    def initialize(listing, guest)
        @listing = listing
        @guest = guest
        @@all << self
    end
    def self.all
        @@all
    end
end