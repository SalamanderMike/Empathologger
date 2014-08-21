class Eblog < ActiveRecord::Base
  has_many :searches
  has_many :keywords, :through => :searches
end
