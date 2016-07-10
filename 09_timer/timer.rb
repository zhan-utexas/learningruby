class Timer
	attr_accessor :seconds

	def seconds
		@seconds = 0
	end

	def time_string
		int = @seconds.to_i
		converted_minute = int / 60
		converted_hour = converted_minute / 60
		hour = converted_hour.to_s.rjust(2, '0')
		min = (converted_minute % 60).to_s.rjust(2, '0')
		secs = (int % 60).to_s.rjust(2, '0')

		time  = [hour, min, secs].join(":").strip
	end
end
