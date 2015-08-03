class Quote < ActiveRecord::Base
	validates :saying, :presence => true, :length => { :maxium => 140, :minimum => 3}
	validates :author, :presence => true, :length => { :maxium => 50, :minimum => 3}
end
