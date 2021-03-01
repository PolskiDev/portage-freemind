# @module <server.rb>
class Server
	@squot = "\""
	
	def auto_reload(seconds)
		meta = "refresh"
		default = 0

		if seconds != nil
			$init.puts("<meta http-equiv=\"#{meta}\" content=\"#{seconds.to_s}\">") # add <meta> content description.
		else
			$init.puts("<meta http-equiv=\"#{meta}\" content=\"#{default.to_s}\">") # null value
		end
	end
	def keygen(id, name)
		meta = "refresh"
		default = 0

		if name != nil and id != nil
			$init.puts("<keygen id=#{@squot}#{id}#{@squot} name=\"#{name}\">") # add <meta> content description.
		
		elsif name != nil and id == nil
			$init.puts("<keygen name=\"#{name}\">") # null value
		end
	end
end