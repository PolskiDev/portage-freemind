
# => Create labels (symbolic links), iframes
# 	 and anchors (current or on a new tab).

# @module <rframe.rb>
class RFrame
	def iframe(url, width,height, format)
		if format == nil or format == false
			#False case (px)
			$init.puts("<iframe src=\"#{url}\" width=\"#{width}px\" height=\"#{height}px\" allowfullscreen></iframe>")
		
		else #elsif format !=nil or format == true
			#True case (%)
			$init.puts("<iframe src=\"#{url}\" width=\"#{width}%\" height=\"#{height}%\" allowfullscreen></iframe>")
		end
	end

	# => It displays a static image on the screen
	#    New feature from (2021-006/dev-300)
	def display_image(url, width,height, format)
		if format == false
			# format = (px)
			$init.puts("<img src=\"#{url}\" width=\"#{width.to_s}px\" height=\"#{height.to_s}px\">")
		else
			#format = (%)
			$init.puts("<img src=\"#{url}\" width=\"#{width.to_s}%\" height=\"#{height.to_s}%\">")
		end
	end

	# => It creates a long or short label.
	def label(id, level, msg)
			# id - item identification;
			# level - hType;
			# msg - Showed message ("HelloWorld");
		
		if level == nil or level == false or level == 0
			# FALSE or NIL -> Short label
			$init.puts("<label for=\"#{id}\">") # Only ID
		else
			# TRUE -> Long label
			$init.puts("<label for=\"#{id}\"> <h#{level}> #{msg} </h#{level}> </label>")
			#  *ID with LEVEL and custom message
		end
	end
	def end_label
		$init.puts("</label>")
	end

	# => It creates an anchor (hyperlink)
	def anchor(level, msg, wlink, hover_colour, visited_link_colour)
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
				$init.puts("<h#{level.to_s}>#{msg}</h#{level.to_s}>") 
			$init.puts("</a>")

		elsif visited_link_colour == nil or visited_link_colour == 0 or visited_link_colour == false
			# If only hover_colour is TRUE (without hashtag);
			default_color = "fff"

			$init.puts("<a href=\"#{wlink}\" onMouseOver=\"this.style.color:\'##{hover_colour}\'\" onMouseOut=\"this.style.color:\'##{default_color}\'\">")
				$init.puts("<h#{level.to_s}>#{msg}</h#{level.to_s}>") 
			$init.puts("</a>")
		else
			# If hover_colour AND visited_link_colour are TRUE (without hashtag);
			$init.puts("<a href=\"#{wlink}\" onMouseOver=\"this.style.color:\'##{hover_colour}\'\" onMouseOut=\"this.style.color:\'##{visited_link_colour}\'\">")
				$init.puts("<h#{level.to_s}>#{msg}</h#{level.to_s}>") 
			$init.puts("</a>")
		end
	end

	def anchorOnNewTab(level, msg, wlink, hover_colour, visited_link_colour)
		if hover_colour == nil and visited_link_colour == nil
			# inside if condition
			# If both parameters are NULL;

			$init.puts("<a href=\"#{wlink}\" target=\"_blank\">")
				$init.puts("<h#{level.to_s}>#{msg}</h#{level.to_s}>") 
			$init.puts("</a>")

		elsif visited_link_colour == nil or visited_link_colour == 0 or visited_link_colour == false
			# If only hover_colour is TRUE (without hashtag);
			default_color = "fff"

			$init.puts("<a href=\"#{wlink}\" onMouseOver=\"this.style.color:\'##{hover_colour}\'\" onMouseOut=\"this.style.color:\'##{default_color}\'\" target=\"_blank\">")
				$init.puts("<h#{level.to_s}>#{msg}</h#{level.to_s}>") 
			$init.puts("</a>")
		else
			# If hover_colour AND visited_link_colour are TRUE (without hashtag);
			$init.puts("<a href=\"#{wlink}\" onMouseOver=\"this.style.color:\'##{hover_colour}\'\" onMouseOut=\"this.style.color:\'##{visited_link_colour}\'\" target=\"_blank\">")
				$init.puts("<h#{level.to_s}>#{msg}</h#{level.to_s}>") 
			$init.puts("</a>")
		end
	end
	
	# =>  			Graphical User Interface - GUI Elements
	#    		*Extracted from Lua HTML-PPC (version  2.0.3-13)*
	
	# => RADIO BUTTON
	def radio(name,value)
		ftype = "radio"
		$init.puts("<input type=\"#{ftype}\" name=\"#{name}\" value=\"#{value}\">")
	end

	# => NUMBER BOX
	def number(name,min,max)
		ftype = "number"
		$init.puts("<input type=\"#{ftype}\" name=\"#{name}\" min=\"#{min}\" max=\"#{max}\">")
	end

	# => PASSWORD BOX
	def password(name,placeholder)
		ftype = "password"
		$init.puts("<input type=\"#{ftype}\" name=\"#{name}\" placeholder=\"#{placeholder}\">")
	end

	# => SLIDE BAR - FROM int min; TO int max;
	def slider(name, min,max)
		ftype = "range"
		$init.puts("<input type=\"#{ftype}\" name=\"#{name}\" min=\"#{min}\" max=\"#{max}\">")
	end

	# => RESET BUTTON
	def reset
		ftype = "reset"
		$init.puts("<input type=\"#{ftype}\">")
	end

	# => SEARCH BUTTON
	def search(name)
		ftype = "search"
		if name == nil then name = 'q' end
		$init.puts("<input type=\"#{ftype}\" name=\"#{name}\">")
	end

	# => SUBMIT BUTTON
	def send(value)
		ftype = "submit"
		if value == nil then value = 'Ok' end
		$init.puts("<input type=\"#{ftype}\" value=\"#{value}\">")
	end

	# => TELEPHONE NUMBER BUTTON
	def telephone_number(name)
		ftype = "tel"
		if name == nil then name = 'Telephone' end
		$init.puts("<input type=\"#{ftype}\" name=\"#{name}\">")
	end
	# Simplified syntax
	def telephone(name)
		telephone_number(name)
	end

	# => TIME BOX
	def time(name)
		ftype = "time"
		if name == nil then name = 'timeBox' end
		$init.puts("<input type=\"#{ftype}\" name=\"#{name}\">")
	end

	# => URL BOX
	def url(name)
		ftype = "url"
		if name == nil then name = 'url_webpage' end
		$init.puts("<input type=\"#{ftype}\" name=\"#{name}\">")
	end

	# => DAY OF THE WEEK BOX
	def week(name)
		ftype = "week"
		if name == nil then name = 'week_field' end
		$init.puts("<input type=\"#{ftype}\" name=\"#{name}\">")
	end

	# => TEXT FIELD
	def text_field(rowsd,cols, maxLength, textBoxName, content, pattern)
		# IF HAS NO SPECIFICATION
		if pattern == nil then
			$init.puts("<textarea name=\"#{textBoxName}\" rows=\"#{rows}\" cols=\"#{cols}\" maxlength=\"#{maxLength}\">"+content+"</textarea>")
	
		# IF HAS SPECIFICATION <PROTECTED>
		elsif pattern == "protected" then
			# readonly
			$init.puts("<textarea name=\"#{textBoxName}\" rows=\"#{rows}\" cols=\"#{cols}\" maxlength=\"#{maxLength}\" readonly>"+content+"</textarea>")
	
		# IF HAS SPECIFICATION <DISABLED> OR <OFF>
		elsif pattern == "disabled" or pattern == "off" then
			# disabled
			$init.puts("<textarea name=\"#{textBoxName}\" rows=\"#{rows}\" cols=\"#{cols}\" maxlength=\"#{maxLength}\" disabled>"+content+"</textarea>")
		end
	end
	
	# => Generic Item
		# Extended syntax
	def generic_item(name,ftype)
		$init.puts("<input type=\"#{ftype}\" name=\"#{name}\">")
	end
		# Simplified syntax
	def generic(name,ftype)
		generic_item(name,ftype)
	end

end