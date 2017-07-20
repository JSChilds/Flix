module ApplicationHelper

	def calculate_rating reviews  
		reviews.each do |review|
			count = 0
			count += review.score
			count = count / reviews.length
			return count
		end
	end

	def thumbs_up_down judgement
		if judgement
			return image_tag "thumbs_up.png", class: "thumb"
		else
			return image_tag "thumbs_down.png", class: "thumb"
		end
	end
end
