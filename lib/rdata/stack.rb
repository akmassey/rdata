module RData
	
	class Stack

		def initialize
			@selfStack = Array[
				:top,
				:size,
				:clear,
				:inspect,
				:to_s
			]

			@selfStack[0] = :top
		end

		def push(x)
			@selfStack[:top] = @selfStack[:top] + 1
			@selfStack[@selfStack[:top]] = x
		end

		def top
			return @selfStack[:top]
		end

		def pop
			if self.is_empty?
				raise 'Underflow'
			else
				@selfStack[:top] = @selfStack[:top] - 1
				return @selfStack[:top + 1]
			end 
		end

		def is_empty?
			(@selfStack[:top] == 0) ? 'true' : 'false'
		end

	end

end