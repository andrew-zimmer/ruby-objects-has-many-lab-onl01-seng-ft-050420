class Author 
  attr_accessor :name 
  def initialize(name)
    @name = name 
    @post = []
  end 
  def posts 
    Post.all.select {|post| post.author == self}
  end 
  def add_post(title)
    new_post = Post.new(title)
    new_post.author = self
  end 
end 