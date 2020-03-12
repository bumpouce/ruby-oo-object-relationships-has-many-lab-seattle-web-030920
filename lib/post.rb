require 'pry'

class Post

    @@all = []

    attr_reader :title, :author, :author_name

    def initialize (title)
        @title = title
        @@all << self
    end

    def title=(title)
        @title = title
    end

    def author
        self.author ?  self.author.name : nil 
    end

    def self.all
        @@all
    end

end