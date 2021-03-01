# @module <server.rb>
class Server
	def auto_reload(seconds)
		meta = "refresh"
		default = 0

		if seconds != nil
			$init.puts("<meta http-equiv=\"#{meta}\" content=\"#{seconds}\">") # add <meta> content description.
		else
			$init.puts("<meta http-equiv=\"#{meta}\" content=\"#{default}\">") # null value
		end
	end
	def keygen(name, id)
		meta = "refresh"
		default = 0

		if name != nil and id != nil
			$init.puts("<keygen id=\"#{id}\" name=\"#{name}\">") # add <meta> content description.
		
		elsif name != nil and id == nil
			$init.puts("<keygen name=\"#{name}\">") # null value
		end
	end
end