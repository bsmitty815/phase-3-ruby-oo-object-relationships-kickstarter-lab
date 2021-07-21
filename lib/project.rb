

class Project

    attr_reader :title


    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers

        # this returns the backer that we ar looking for
        project_backer = ProjectBacker.all.select do |project|
            project.project == self
        end
        #now we need to return the backers
        project_backer.map do |bp|
            bp.backer
        end
    end
end