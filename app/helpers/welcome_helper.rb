module WelcomeHelper
	def day_counter(startday, num_days)
		if startday != nil 
			begin_time = Date.parse(startday)
			end_time = num_days.days.from_now(begin_time)
			end_time_b = num_days.business_days.from_now(begin_time)
		end
		{ end_time: end_time, end_time_b: end_time_b }
		# puts "#{num_days} days from #{startday}, is: #{end_time}"
		# puts "#{num_days} business days from #{startday}, is: #{business_end_time}"
	end
end
