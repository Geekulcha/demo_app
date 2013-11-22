class User < ActiveRecord::Base
  has_many :microblogposts
end
