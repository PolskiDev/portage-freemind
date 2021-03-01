# => 				Gabriel Margarido
# This is a test file, it was made to test all classes
# inside the kernel files. It is an experimental version
# of the HTML++ kernel, originally written in Lua 5.1
# HTML++ Compiler: HTML-PPC (version 2.0.3-13)
# 				Current date: January, 2021

#SET VARIABLES
test_all_dir = "manifest"
package_name = "net.gabrielmargarido.ruby.frame"

#REQUIRING
require_relative "#{test_all_dir}/#{package_name}/content/void.rb"
require_relative "#{test_all_dir}/#{package_name}/content/serial.rb"

require_relative "#{test_all_dir}/#{package_name}/content/basics.rb"
require_relative "#{test_all_dir}/#{package_name}/content/format.rb"

require_relative "#{test_all_dir}/#{package_name}/content/formulary.rb"
require_relative "#{test_all_dir}/#{package_name}/content/javascript.rb"
require_relative "#{test_all_dir}/#{package_name}/content/rframe.rb"

require_relative "#{test_all_dir}/#{package_name}/content/list.rb"
require_relative "#{test_all_dir}/#{package_name}/content/orgx.rb"
require_relative "#{test_all_dir}/#{package_name}/content/tablex.rb"


require_relative "#{test_all_dir}/#{package_name}/content/puma.rb"
require_relative "#{test_all_dir}/#{package_name}/content/dolphin.rb"
require_relative "#{test_all_dir}/#{package_name}/content/scanner.rb"

require_relative "#{test_all_dir}/#{package_name}/content/server.rb"
require_relative "#{test_all_dir}/#{package_name}/content/symbols.rb"
require_relative "#{test_all_dir}/#{package_name}/content/stringx.rb"



# =>   		CREATING OBJECTS FROM CLASSES
# 			always with lower case letters

void = Void.new
serial = Serial.new

amout = Basics.new
dolphin = Dolphin.new

format = Format.new
formulary = Formulary.new

js = Javascript.new
symbols = Symbols.new

un_list = UnList.new
or_list = OrList.new
element = ListElement.new

span = Span.new
puma = Puma.new

rframe = RFrame.new
scanner = Scanner.new

server = Server.new
stringx = Stringx.new


# It stops the program execution,
# can be used on Microsoft DOS.
puts("\n If you saw this message, it means everything\n is configurated correctly inside your environment.")

puts "\n" #Jump one line

#system("pause") #Stop the execution
gets