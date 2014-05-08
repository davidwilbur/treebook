module ApplicationHelper

	def flash_class(type)
		case type
		when :alert
			 "alert-danger"
		when :notice
			 "alert-success"
		else
			"fuck"
		end
	end
end
