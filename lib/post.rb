require 'pry'

class Post

    @@all = []

    attr_reader :title
    attr_accessor :author

    def initialize (title)
        @title = title
        @@all << self
    end

    def author_name
        author ?  author.name : nil 
    end

    def self.all
        @@all
    end

end