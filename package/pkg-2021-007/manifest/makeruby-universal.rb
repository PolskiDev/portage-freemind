#Edit to configurate
makeruby_files = ["index.rb"]
build_system = "ruby"
package_name = "net.gabrielmargarido.ruby.frame"

# To compile our Ruby/HTML++ namespaces, we need to use
# a build system. The default build system is the default
# Ruby language interpreter. It was created by Yukihiro
# Matsumoto in Japan, 1995).

# 		For instance you can use these build systems:
# 				"ruby" 	(Matz Ruby Interpreter)
# 				"jruby" (JRuby - Ruby on JVM)



# 				CONTRIBUTIONS TO RUBY/HTML++

# Ruby Programming Language by: 	Yukihiro Matsumoto
# Ruby/HTML++ assembled   	by: 	Gabriel Margarido

# MakeRuby    developed   	by: 	Gabriel Margarido
# Makename and Lua/HTML++ 	by: 	Gabriel Margarido


# GNU General Public License Notices
puts("\n HTML-PPRC is a free software licensed under GNU General Public License (version 3.0).")
puts(" You are free to use, modify and distribute this software with or without your modifications.")
puts(" See more about it at: (https://www.gnu.org/licenses/gpl-3.0.pt-br.html)\n\n")

# Showed results
puts(" Showed results - HTML-PPRC (Ruby/HTML++):\n")

# => Internal Engineering of MakeRuby:
counter = 0 #Flux control
while counter < makeruby_files.size
	#Show the compiled namespace and build system
	puts("\n      COMPILED.00#{counter+1}: (#{makeruby_files[counter]} : #{build_system})") #[#{counter+1*100}]

	#It compiles each file
	system("cd #{package_name} && #{build_system} #{makeruby_files[counter]}") 

	#Add one unity to the flux control variable
	counter = counter + 1
end
#puts "\n Ruby/HTML++ and MakeRuby by:\n Gabriel Margarido - 2021\n \n"
puts "\n"

#system "pause"
gets