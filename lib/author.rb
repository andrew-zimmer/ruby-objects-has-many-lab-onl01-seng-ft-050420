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
    @post << title
  end 
end 