require 'pry'

class Author
  attr_accessor :name, :posts
  def initialize(name)
    @name = name
    @posts = []
  end
  
  
  def add_post(post)
    @posts << post  #add under current author
   post.author = self
   #Post.all << post ##add under all the posts
  end
  
  def add_post_by_title(post_title)
     new_post = Post.new(post_title)
     new_post.author = self
     #@posts << new_post
  end
  
  def self.post_count
    Post.all.length
  end
  
end