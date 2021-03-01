
# @module <formulary.rb>

# => You can use this class to create PHP formularies.
# 	 By this way, we can integrate PHP programming
# 	 language to HTML++ Ruby Namespaces.

class Formulary
	@squot = "\""

	# New feature from (2021-006/dev-300)
	def javascript_form(id, name)
		# => Writing on the file
		if name == nil or name == false
			# IF NAME == $null;
			$init.puts("<form id=\"#{id}\">")
		else 
			#if name != nil and id != nil
			$init.puts("<form id=\"#{id}\" name=\"#{name}\">")
		end

	end

	# New feature from (2021-006/dev-300)
	def js_send(id, msg,onclick,css)
		# String msg = "value" [javascript];

		if css == nil or css == false
			$init.puts("<input type=\"submit\" id=#{@squot}#{id}#{@squot} onclick=\"#{onclick}\" value=\"#{msg}\" />")
		else
			# IF EXISTS css (class);
			$init.puts("<input type=\"submit\" id=#{@squot}#{id}#{@squot} class=\"#{css}\"  onclick=\"#{onclick}\" value=\"#{msg}\" />")
		end
	end

	# Changed from (form) >> (php_form)
	def php_form(method, php_source)
		final_method = nil
			# => send := post
			# => import := get

			if method == "send"
				final_method = "post"

			elsif method == "import"
				final_method = "get"

			else
				final_method = "post"
			end
			# => Writing on the file
			$init.puts("<form method=\"#{final_method}\" action=\"#{php_source}\">")
	end

	# Simplified syntax for (form << php_form)
	def form(method,php_source)
		php_form(method,php_source)
	end

	# => Closing (javascript) and (php)
	#    formularies.
	def end_form
		$init.puts("</form>")
	end
	def end
		# Simplified syntax
		end_form
	end
end