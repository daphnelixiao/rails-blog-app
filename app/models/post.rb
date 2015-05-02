class Post < ActiveRecord::Base
  validates :title, :body, presence:true
  
  #model-level methods
  def hey
    puts "Hey, Daphne!"
  end
  
  #class methods
  def self.bye
    puts "good bye!"
  end
  
  def get_next_post
    next_id=self.id+1
    Post.find_by_id(next_id)
  end
  
  def self.alphabetically_ordered
    Post.order(:title).limit(5)
  end
  
end
