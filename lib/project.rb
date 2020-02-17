class Project 
  attr_reader :backers, :title
  attr_accessor :backer
  
  def initialize(title)
    @backers = []
    @title = title
  end
  
  def add_backer(backer)
    @backers << backer
    if !backer.projects.include?(self)
      backer.add_project(self)
    end
  end
  
  
end