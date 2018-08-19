class Trip

  attr_reader :name, :listing, :guest
  @@all = []

  def initialize(name,guest,listing)
    @name = name
    @guest = guest
    @listing = listing
  end

  def self.all
    @@all
  end

  def guest
    guest
  end

  def listing
    listing
  end
end
