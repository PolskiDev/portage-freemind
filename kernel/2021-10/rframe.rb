
# => Create labels (symbolic links), iframes
# 	 and anchors (current or on a new tab).

# @module <rframe.rb>
class RFrame
	@squot = "\""
	
	def iframe(id, url,width,height, format)
		if format == nil or format == false
			#False case (px)
			$init.puts("<iframe src=\"#{url}\" id=#{@squot}#{id}#{@squot} width=\"#{width.to_s}px\" height=\"#{height.to_s}px\" allowfullscreen></iframe>")
		
		else #elsif format !=nil or format == true
			#True case (%)
			$init.puts("<iframe src=\"#{url}\" id=#{@squot}#{id}#{@squot} width=\"#{width.to_s}%\" height=\"#{height.to_s}%\" allowfullscreen></iframe>")
		end
	end

	# => It displays a static image on the screen
	#    New feature from (2021-006/dev-300)
	def display_image(id, url, width,height, format)
		if format == false
			# format = (px)
			$init.puts("<img src=\"#{url}\" id=#{@squot}#{id}#{@squot} width=\"#{width.to_s}px\" height=\"#{height.to_s}px\">")
		else
			#format = (%)
			$init.puts("<img src=\"#{url}\" id=#{@squot}#{id}#{@squot} width=\"#{width.to_s}%\" height=\"#{height.to_s}%\">")
		end
	end

	# => It creates a long or short label.
	def label(id, level, msg)
			# id - item identification;
			# level - hType;
			# msg - Showed message ("HelloWorld");

			# String for[javascript] = "id";
		
		if level == nil or level == false or level == 0
			# FALSE or NIL -> Short label
			$init.puts("<label for=\"#{id}\">") # Only ID
		else
			# TRUE -> Long label
			$init.puts("<label for=\"#{id}\"> <h#{level.to_s}> #{msg} </h#{level.to_s}> </label>")
			#  *ID with LEVEL and custom message
		end
	end
	def end_label
		$init.puts("</label>")
	end

	# => It creates an anchor (hyperlink)
	def anchor(id, level, msg, wlink, hover_colour, visited_link_colour)
			#*level = int; /*<h1> LEVEL*/
			#*msg = string; /*SHOWED MESSAGE*/
			#*wlink = string; /*REDIRECT TO CERTAIN WEB HREF LINK*/

			#*hover_colour = string; /*THE LINK COLOUR WHEN IT IS HOVERED*/
			#*visited_link_colour = string; /*IT CHANGES THE COLOUR IF THE LINK
										#WAS VISITED*/
			#MANDATORY {
				#*level, msg, wlink;
				
				#EXCLUDES {
					#*visited_link_colour,
					#hover_colour;
				#}
			#}

		if hover_colour == false and visited_link_colour == false
			# inside if condition
			# If both parameters are NULL;

			$init.puts("<a href=\"#{wlink}\">")
				$init.puts("<h#{level.to_s} id=#{@squot}#{id}#{@squot}>#{msg}</h#{level.to_s}>") 
			$init.puts("</a>")

		elsif visited_link_colour == nil or visited_link_colour == 0 or visited_link_colour == false
			# If only hover_colour is TRUE (without hashtag);
			default_color = "fff"

			$init.puts("<a href=\"#{wlink}\" onMouseOver=\"this.style.color:\'##{hover_colour}\'\" onMouseOut=\"this.style.color:\'##{default_color}\'\">")
				$init.puts("<h#{level.to_s} id=#{@squot}#{id}#{@squot}>#{msg}</h#{level.to_s}>") 
			$init.puts("</a>")
		else
			# If hover_colour AND visited_link_colour are TRUE (without hashtag);
			$init.puts("<a href=\"#{wlink}\" onMouseOver=\"this.style.color:\'##{hover_colour}\'\" onMouseOut=\"this.style.color:\'##{visited_link_colour}\'\">")
				$init.puts("<h#{level.to_s} id=#{@squot}#{id}#{@squot}>#{msg}</h#{level.to_s}>") 
			$init.puts("</a>")
		end
	end

	def anchorOnNewTab(id, level, msg, wlink, hover_colour, visited_link_colour)
		if hover_colour == nil and visited_link_colour == nil
			# inside if condition
			# If both parameters are NULL;

			$init.puts("<a href=\"#{wlink}\" target=\"_blank\">")
				$init.puts("<h#{level.to_s} id=#{@squot}#{id}#{@squot}>#{msg}</h#{level.to_s}>") 
			$init.puts("</a>")

		elsif visited_link_colour == nil or visited_link_colour == 0 or visited_link_colour == false
			# If only hover_colour is TRUE (without hashtag);
			default_color = "fff"

			$init.puts("<a href=\"#{wlink}\" onMouseOver=\"this.style.color:\'##{hover_colour}\'\" onMouseOut=\"this.style.color:\'##{default_color}\'\" target=\"_blank\">")
				$init.puts("<h#{level.to_s} id=#{@squot}#{id}#{@squot}>#{msg}</h#{level.to_s}>") 
			$init.puts("</a>")
		else
			# If hover_colour AND visited_link_colour are TRUE (without hashtag);
			$init.puts("<a href=\"#{wlink}\" onMouseOver=\"this.style.color:\'##{hover_colour}\'\" onMouseOut=\"this.style.color:\'##{visited_link_colour}\'\" target=\"_blank\">")
				$init.puts("<h#{level.to_s} id=#{@squot}#{id}#{@squot}>#{msg}</h#{level.to_s}>") 
			$init.puts("</a>")
		end
	end
	
	# =>  			Graphical User Interface - GUI Elements
	#    		*Extracted from Lua HTML-PPC (version  2.0.3-13)*
	# 					*Server-side elements (back-end)

	# => RADIO BUTTON
	def radio(id,name, value)
		# String value = msg;
		ftype = "radio"
		$init.puts("<input type=\"#{ftype}\" id=#{@squot}#{id}#{@squot} name=\"#{name}\" value=\"#{value}\">")
	end

	# => NUMBER BOX
	def number(id,name, min,max)
		ftype = "number"
		$init.puts("<input type=\"#{ftype}\" id=#{@squot}#{id}#{@squot} name=\"#{name}\" min=\"#{min.to_s}\" max=\"#{max.to_s}\">")
	end

	# => PASSWORD BOX
	def password(id,name, placeholder)
		ftype = "password"
		$init.puts("<input type=\"#{ftype}\" id=#{@squot}#{id}#{@squot} name=\"#{name}\" placeholder=\"#{placeholder}\">")
	end

	# => SLIDE BAR - FROM int min; TO int max;
	def slider(id,name, min,max)
		ftype = "range"
		$init.puts("<input type=\"#{ftype}\" id=#{@squot}#{id}#{@squot} name=\"#{name}\" min=\"#{min.to_s}\" max=\"#{max.to_s}\">")
	end

	# => RESET BUTTON
	def reset(id,name)
		ftype = "reset"
		if id == nil or id == false and name == nil or name == false
			$init.puts("<input type=\"#{ftype}\">")
		else
			$init.puts("<input type=\"#{ftype}\" id=#{@squot}#{id}#{@squot} name=\"#{name}\">")
		end
		
		
	end

	# => SEARCH BUTTON
	def search(id,name)
		ftype = "search"
		if name == nil then name = 'q' end
		$init.puts("<input type=\"#{ftype}\" id=#{@squot}#{id}#{@squot} name=\"#{name}\">")
	end

	# => SUBMIT BUTTON
	def send(id,name, value)
		# String value = msg;

		ftype = "submit"
		if value == nil then value = 'Ok' end
		$init.puts("<input type=\"#{ftype}\" id=#{@squot}#{id}#{@squot} name=\"#{name}\" value=\"#{value}\">")
	end

	# => TELEPHONE NUMBER BUTTON
	def telephone_number(id,name)
		ftype = "tel"
		if name == nil then name = 'Telephone' end
		$init.puts("<input type=\"#{ftype}\" id=#{@squot}#{id}#{@squot} name=\"#{name}\">")
	end
	# Simplified syntax
	def telephone(id,name)
		telephone_number(id,name)
	end

	# => TIME BOX
	def time(id,name)
		ftype = "time"
		if name == nil then name = 'timeBox' end
		$init.puts("<input type=\"#{ftype}\" id=#{@squot}#{id}#{@squot} name=\"#{name}\">")
	end

	# => URL BOX
	def url(id,name)
		ftype = "url"
		if name == nil then name = 'url_webpage' end
		$init.puts("<input type=\"#{ftype}\" id=#{@squot}#{id}#{@squot} name=\"#{name}\">")
	end

	# => DAY OF THE WEEK BOX
	def week(id,name)
		ftype = "week"
		if name == nil then name = 'week_field' end
		$init.puts("<input type=\"#{ftype}\" id=#{@squot}#{id}#{@squot} name=\"#{name}\">")
	end

	# => TEXT FIELD
	def text_field(id, rows,cols,maxLength, textBoxName, content, pattern)
		# IF HAS NO SPECIFICATION
		if pattern == nil then
			$init.puts("<textarea name=\"#{textBoxName}\" rows=\"#{rows.to_s}\" cols=\"#{cols.to_s}\" id=#{@squot}#{id}#{@squot} maxlength=\"#{maxLength.to_s}\">"+content+"</textarea>")
	
		# IF HAS SPECIFICATION <PROTECTED>
		elsif pattern == "protected" then
			# readonly
			$init.puts("<textarea name=\"#{textBoxName}\" rows=\"#{rows.to_s}\" cols=\"#{cols.to_s}\" id=#{@squot}#{id}#{@squot} maxlength=\"#{maxLength.to_s}\" readonly>"+content+"</textarea>")
	
		# IF HAS SPECIFICATION <DISABLED> OR <OFF>
		elsif pattern == "disabled" or pattern == "off" then
			# disabled
			$init.puts("<textarea name=\"#{textBoxName}\" rows=\"#{rows.to_s}\" cols=\"#{cols.to_s}\" id=#{@squot}#{id}#{@squot} maxlength=\"#{maxLength.to_s}\" disabled>"+content+"</textarea>")
		end
	end
	
	# => Generic Item
		# Extended syntax
	def generic_item(id,name, ftype)
		$init.puts("<input type=\"#{ftype}\" id=#{@squot}#{id}#{@squot} name=\"#{name}\">")
	end
		# Simplified syntax
	def generic(id,name, ftype)
		generic_item(id,name, ftype)
	end

end