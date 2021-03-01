# @module <dolphin.rb>

class Dolphin
	# Object variables (kernel constants)
	@quot = "\""
	@single_quot = "\'"

	@copyright = "©"
	@trademark = "™"

	@registered = "®"
	@reg = @registered

	@endl = "\n"

	# Methods
	def description(description)
		# => Our attribute inside meta instruction
		meta_attribute = "description"

		# => Structure
		if description != nil
			$init.puts("<meta name=\"#{meta_attribute}\" content=\"#{description}\">")
		else
			$init.puts("<meta name=\"#{meta_attribute}\" content=\"null\">")
		end
	end

	def keyword(key)
		# => Our attribute inside meta instruction
		meta_attribute = "keywords"

		# => Structure
		if key != nil
			$init.puts("<meta name=\"#{meta_attribute}\" content=\"#{key}\">")
		else
			$init.puts("<meta name=\"#{meta_attribute}\" content=\"null\">")
		end
	end

	def author(author)
		# => Our attribute inside meta instruction
		meta_attribute = "author"

		# => Structure
		if author != nil
			$init.puts("<meta name=\"#{meta_attribute}\" content=\"#{author}\">")
		else
			$init.puts("<meta name=\"#{meta_attribute}\" content=\"null\">")
		end
	end

end