class User < ActiveRecord::Base
  include Clearance::User

  has_many :enrollment
  has_many :course, :through => :enrollment
end
