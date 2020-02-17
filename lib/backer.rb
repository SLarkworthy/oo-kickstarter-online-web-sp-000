class Backer
  attr_reader :backed_projects
  attr_accessor :name
  
  def initialize(name)
    @backed_projects = []
    @name = name
  end
  
  def Backer(project)
    @backed_projects << project
  end
  

end