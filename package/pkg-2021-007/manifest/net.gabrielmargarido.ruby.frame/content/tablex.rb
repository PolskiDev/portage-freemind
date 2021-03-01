class Tablex

	# => Creating a table
	def create_table(borders)
		if borders == true
			$init.puts("<table border=\"1\">")
		else
			#if borders == false
			$init.puts("<table border=\"0\">")
		end
	end

	# => Closing the table
	def close_table
		$init.puts("</table>")
	end
	def end_table
		close_table
	end

	# Insert a line (row)
	def line
		$init.puts("<tr>")
	end
	def end_line
		$init.puts("</tr>")
	end
	
	# Insert information
	def data(information)
		$init.puts("<td>#{information}</td>")
	end

	# Insert formatted information
	def dataf(level, information)
		$init.puts("<td><h#{level}> #{information} </h#{level}></td>")
	end
end