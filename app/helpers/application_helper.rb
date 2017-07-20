module ApplicationHelper

	def calculate_rating reviews  
		reviews.each do |review|
			count = 0
			count += review.score
			count = count / reviews.length
			return count
		end
	end
end
