# @module <serial.rb>
class Serial
	#formatted
	def printf(level,msg)
		$init.puts("<h#{level}> #{msg} </h#{level}>")
	end

	#not formatted
	def print(msg)
		$init.puts("<p>#{msg}</p>")
	end
end