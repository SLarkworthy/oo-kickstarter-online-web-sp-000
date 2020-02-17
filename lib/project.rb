class Project 
  attr_reader :backers, :title
  attr_accessor
  
  def initialize(title)
    @backers = []
    @title = title
  end
  
  def add_backer(backer)
    @backers << backer
    backer.project = self
  end
  
  
end