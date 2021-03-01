
# @module <formulary.rb>

# => You can use this class to create PHP formularies.
# 	 By this way, we can integrate PHP programming
# 	 language to HTML++ Ruby Namespaces.

class Formulary

	# New feature from (2021-006/dev-300)
	def javascript_form(name, id)
		# => Writing on the file
		if id == nil
			$init.puts("<form name=\"#{name}\">")
		else 
			#if name != nil and id != nil
			$init.puts("<form name=\"#{name}\" id=\"#{id}\">")
		end

	end

	# New feature from (2021-006/dev-300)
	def js_send(msg,onclick, css)
		if css == nil or css == "none"
			$init.puts("<input type=\"submit\" onclick=\"#{onclick}\" value=\"#{msg}\" />")
		else
			$init.puts("<input type=\"submit\" class=\"#{css}\" onclick=\"#{onclick}\" value=\"#{msg}\" />")
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