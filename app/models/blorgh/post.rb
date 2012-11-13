module Blorgh

  class Post < ActiveRecord::Base
    attr_accessible :text, :title
    
  #associations
  has_many :comments    
    
  end
end
