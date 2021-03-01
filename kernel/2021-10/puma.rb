
# => Class created from HTML++ Lua Kernel:
# 	 Pearl.toolkit.* and improved elements.

# @module <puma.rb>
class Puma
	@squot = "\""

	def video(id, source, width,height, format,rewind)
		if rewind == false or rewind == nil and format == false 
			#normal video - (rewind:false,px:true)
			$init.puts("<video src=\"#{source}\" id=#{@squot}#{id}#{@squot} width=\"#{width.to_s}px\" height=\"#{height.to_s}px\" controls></video>")
		
		elsif format != false and rewind != false or rewind != nil 
			#1st condition video (rewind:true, px:false(%))
			$init.puts("<video src=\"#{source}\" id=#{@squot}#{id}#{@squot} width=\"#{width.to_s}%\" height=\"#{height.to_s}%\" controls rewind></video>")
		
		elsif rewind != false and format == false 
			#2nd condition video - (rewind:true, px:true)
			$init.puts("<video src=\"#{source}\" id=#{@squot}#{id}#{@squot} width=\"#{width.to_s}px\" height=\"#{height.to_s}px\" controls rewind></video>")
		
		elsif rewind == false or rewind == nil and format == true 
			#3rd and last condition video - (rewind:false,px:false)
			$init.puts("<video src=\"#{source}\" id=#{@squot}#{id}#{@squot} width=\"#{width.to_s}%\" height=\"#{height.to_s}%\" controls></video>")
		end
	end

	def audio(id, source,rewind)
		if rewind == nil or rewind == false
			#IF rewind DOES NOT EXIST
			$init.puts("<audio src=\"#{source}\" id=#{@squot}#{id}#{@squot} controls></audio>")
		else
			#IF rewind EXISTS
			$init.puts("<audio src=\"#{source}\" id=#{@squot}#{id}#{@squot} autoplay controls loop></audio>")
		end
	end
	
	def progressBar(id,value)
		# String value = "value"[javascript];

		maximum_loading = 100
		$init.puts("<progress value=\"#{value.to_s}\" max=\"#{maximum_loading.to_s}\" id=#{@squot}#{id}#{@squot}></progress>")
	end
end