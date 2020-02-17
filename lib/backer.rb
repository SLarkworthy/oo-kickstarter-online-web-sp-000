class Backer
  attr_reader :backed_projects
  attr_accessor :name, :project
  
  def initialize(name)
    @backed_projects = []
    @name = name
  end
  
  def back_project(project)
    @backed_projects << project
    if !project.backed_projects.include?(self)
      backer.back_project(self)
  end
  

end