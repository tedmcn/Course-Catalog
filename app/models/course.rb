class Course < ActiveRecord::Base
  has_many :enrollment
  has_many :users, :through => :enrollment

  def self.search(search)
      Course.where("name LIKE ?", "%#{search}%")
  end

  def create
    
  end
end
