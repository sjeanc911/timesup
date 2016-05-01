class User < ActiveRecord::Base
  has_many :goals, -> { order 'priority' }, as: :owner
end
