class Author

    @@authors = []
    attr_accessor :name, :post

    def initialize (name) 
        @name = name
        @@authors << self
    end

    def add_post(post)
        post.name = self
    end

    def add_post_by_title(post)
        post = Post.new(post)
        post.name = self
    end

    def self.post_count
        Post.all.count
    end

    def posts
        Post.all.select {|post| post.name == self}
    end

end
