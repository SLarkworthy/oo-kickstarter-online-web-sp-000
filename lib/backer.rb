class Backer
  attr_reader :backed_projects
  attr_accessor :name, :project
  
  def initialize(name)
    @backed_projects = []
    @name = name
  end
  
  def back_project(project)
    @backed_projects << project
    if !project.backers.include?(self)
      project.add_backer(self)
    end
  end
  

end