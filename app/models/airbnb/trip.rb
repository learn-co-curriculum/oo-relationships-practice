class Trip

  attr_reader :name
  @@all = []

  def initialize(name,guest,listing)
    @name = name
    @guest = guest
    @listing = listing
    @@all << self
  end

  def self.all
    @@all
  end

  def guest
    @guest
  end

  def listing
    @listing
  end
end
