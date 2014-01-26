class Course < ActiveRecord::Base
  has_many :comments
  has_many :gpas
  has_many :in_and_outs

end
