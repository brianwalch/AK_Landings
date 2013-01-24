 # encoding: utf-8
class Faafacility < ActiveRecord::Base

	has_many :remarks
	has_many :faarunways
	has_many :faaschedules
	def self.search(search)
		if search  
			where('LocationID LIKE ?', "#{search}%")  
		else  
	  		scoped  
		end   
	end  

end

