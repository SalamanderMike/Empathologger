class Keywords < ActiveRecord::Base
  has_many :searches
  has_many :eblogs, :through => :searches
end
