class Question < ActiveRecord::Base
  attr_accessible :content, :score, :title
  has_many :answers

def self.search(search)
  if search
    find(:all, :conditions => ['LOWER(title) LIKE LOWER(?)', "%#{search}%"])
  else
    find(:all)
  end
end
end
