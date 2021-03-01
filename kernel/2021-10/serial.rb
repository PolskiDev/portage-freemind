# @module <serial.rb>
class Serial

	#Second argument is always the individual ID;
	@squot = "\""
	
	#formatted
	def printf(id, level,msg)
		#level: string
		#id: string
		#msg: string

		if id == false or id == nil
			$init.puts("<h#{level.to_s}> #{msg} </h#{level.to_s}>")
		else
			$init.puts("<h#{level.to_s} id=#{@squot}#{id}#{@squot}> #{msg} </h#{level.to_s}>")
		end

	end

	#not formatted
	def print(id, msg)
		if id == false or id == nil
			# if: serial.print(msg, false)
			$init.puts("<p>#{msg}</p>")
		
		else
			$init.puts("<p id=#{@squot}#{id}#{@squot}> #{msg} </p>")
		end
		
	end
end