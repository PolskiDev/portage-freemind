
# => 		Information about this class in Ruby
# Class name				(Void)
# Version information		(v1.0-development)
# Date 						(January, 2021)
# Author 					(Gabriel Margarido)
# License 					(GNU General Public License 3.0)

# => 				What is this?
# 	 This is the main class of HTML++ Ruby Kernel.
# 	 You can modify and distribute your modifications,
# 	 this software is free software licensed under
# 	 GNU General Public License (version 3.0).
# 	 		Gabriel Margarido, January 2021

# @module <void.rb>
class Forced_void
	# => @include method;
	def namespace(src)
		#$int_0x80 = "dist/"
		#$init = File.new($int_0x80+src,'w')
		
		# => 	Creating an object from "File" class.
		$init = File.new(src,'w')
		
		# => 	Writing
		$init.puts("<!DOCTYPE html>")
		$init.puts("<html>")
		$init.puts("<head>")
	end

	# => @main method;
	def main
		$init.puts("</head>")
		$init.puts("<body>")
	end

	# => @end method;
	def end
		$init.puts("</body>")
		$init.puts("</html>")
		# => 	Closing
		$init.close
	end
end

class Void < Forced_void
	# => HTML namespace
	def using_namespace(src)
		namespace(src)
	end

	def program(src)
		namespace(src)
	end

	#Short syntax
	def get_ns(src)
		namespace(src)
	end

	#Assembly-like
	def int_13b(src)
		namespace(src)
	end

	# => Final instruction
	def end_main
		
		# Instructions copied from "end" method.
		# An error occurs when trying to call
		# this method from "Forced_void" class.

		$init.puts("</body>")
		$init.puts("</html>")
		# => 	Closing
		$init.close
	end

	def end_program
		end_main
	end
	def got_final
		end_main
	end

	#Assembly-like
	def int_80h
		end_main
	end

end