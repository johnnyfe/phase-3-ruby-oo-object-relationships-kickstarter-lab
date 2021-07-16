class Project

    attr_reader :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        project_backers = ProjectBacker.all.select {|backer| backer.project == self}
        project_backers.map {|project_backer| project_backer.backer}
    end

end