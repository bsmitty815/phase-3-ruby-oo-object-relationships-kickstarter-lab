
require "pry"
class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        # this returns the backer that we ar looking for
        project_backer = ProjectBacker.all.select do |project|
            project.backer == self
        end
        #now we need to return  the projects
        project_backer.map do |pb|
            pb.project
        end
    end
end