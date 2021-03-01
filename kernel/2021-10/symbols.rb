
# @module <symbols.rb>
class Symbols
	# => Italic
	def it
		$init.puts("<i>")
	end

	def end_it
		$init.puts("</i>")
	end

	# => Bold
	def bold
		$init.puts("<b>")
	end

	def end_bold
		$init.puts("</b>")
	end

	# => Underline
	def it
		$init.puts("<u>")
	end

	def end_it
		$init.puts("</u>")
	end

	# => Stike
	def it
		$init.puts("<s>")
	end

	def end_it
		$init.puts("</s>")
	end

	# => Long
	def long
		$init.puts("<b><i>")
	end

	def end_long
		$init.puts("</i></b>")
	end

	# => code
	def code
		$init.puts("<code>")
	end

	def end_code
		$init.puts("</code>")
	end

	# => blink
	def blink
		$init.puts("<blink>") #beginning
	end

	def end_blink
		$init.puts("</blink>") #end
	end

	# => HORIZONTAL LINE
	def line
		$init.puts("<hr>")
	end

	# => FORMATED TEXT
	def pref
		$init.puts("<pre>")
	end

	def end_pref
		$init.puts("</pre>")
	end

	# => FONT SIZE
	def font(id, i)
		$init.puts("<font size=\"#{i.to_s}\" id=#{@squot}#{id}#{@squot}>")
	end
	def end_font
		$init.puts("<font>")
	end
end