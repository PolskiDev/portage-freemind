#
#
#  				RUBY/HTML++ RUBY-FRAME TEMPLATE
#
# 		Ruby Programming language: 	Yukihiro Matsumoto
# 		Ruby assembled on HTML++: 	Gabriel Margarido
#
# 		February 2nd, 2021 - Rio de Janeiro, Brazil
#
# 				HTML-PPRC and this template
#  			   are licensed under GNU GPL 3.0
#
#

require_relative "content/void.rb"
require_relative "content/serial.rb"
require_relative "content/basics.rb"

require_relative "content/javascript.rb"
require_relative "content/rframe.rb"
require_relative "content/list.rb"
require_relative "content/orgx.rb"

require_relative "content/format.rb"

require_relative "content/list.rb"

class Linker
	# Use this class to create links between
	# messages and addresses.

	$use = Basics.new
	# Creating a method to use
	def set(menu_name, menu_href, menu_set)
		return $use.insert_html('<h'+menu_set+'><a href="'+menu_href+'" style="color: white;">'+menu_name+'</a></h'+menu_set+'>')
	end

	def setf(menu_name, menu_href)
		# Using invisible character after puts
		return $use.insert_html('<a href="'+menu_href+'" style="color: white;">'+menu_name+'</a>⠀⠀')
	end
	
end

class Program

	# * HTML-PPRC is a Free Software licensed under
	# * GNU General Public License (version 3.0).
	# *
	# * Ruby Programming Language: 	Yukihiro Matsumoto.
	# * HTML++ assembled on Ruby:  	Gabriel Margarido.


	# Creating objects from classes
	void = Void.new
	serial = Serial.new
	basics = Basics.new

	javascript = Javascript.new
	rframe = RFrame.new

	element = ListElement.new
	span = Span.new
	groupx = Groupx.new
	format = Format.new
	
	# My objects
	linker = Linker.new

	# List objects
	list = UnList.new
	or_list = OrList.new

	# Program code here
	void.namespace "index.html"
		# RubyFrame Window Settings
		basics.setCaption("RubyFrame")
		basics.def_icon("icns/icon.png")
		basics.def_utf8

		# jQuery
		format.using("js","frameworks/jquery/jquery-3.5.1.min.js")
		
		# Libraries and frameworks
		format.using("css","frameworks/css/class.css")
		format.using("js","frameworks/js/javascript.js")

		format.using("css","frameworks/css/btn.css")
		format.using("css","frameworks/css/green-btn.css")
		format.using("css","frameworks/css/blue-btn.css")

		# Design classes
		format.using("css","frameworks/css/scrolling-nav.css")
		format.using("js","frameworks/js/scrolling-nav.js")
		
		# Bootstrap settings
		basics.insert_html('<meta name="viewport" content="width=device-width, initial-scale=1.0">')

		# Bootstrap
		format.using("js","frameworks/bootstrap/js/bootstrap.min.js")
		format.using("css","frameworks/bootstrap/css/bootstrap.css")
		
		# Extras
		basics.insert_html('<link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/navbar-fixed/">')
		basics.insert_html('<meta name="viewport" content="width=device-width, initial-scale=1">')

		format.using("css","frameworks/css/navbar-top-fixed.css")
		
		# variables and constants area
		msg = "Hello, world"
		invisible_char = "⠀⠀"

	void.main
		# software working area
		javascript.responsive('begin','none')
		basics.navmenu("mainNav", "navbar navbar-expand-lg navbar-dark bg-dark fixed-top")
		basics.group("mainTitle","container")
			
			#BEFORE: 36,36,false
			
			rframe.display_image("icns/icon.png",56,56, false)
			basics.group("ax0",'navbar-brand js-scroll-trigger')
				serial.printf(5,invisible_char+"RubyFrame") # Navbar size
			basics.end_group

			basics.group("navbarResponsive", "collapse navbar-collapse")
				basics.insert_html('<ul class="navbar-nav ml-auto">')

				basics.group("item_1","white-link")
				element.long

					# define the navbar names and addresses
					# 			to auto-engine
					menu_name = ['Download','Software license','What is our product','Contributions']
					menu_href = ['#download','#license','#product','#contributions']
					


					# 				AUTO-ENGINE
					# 	Create to automatizate our work.

					#& setting nav menu items
					$symbolic_link_controler = menu_name.size
					a00 = 0 # While Counter

					while a00 < $symbolic_link_controler
						# create symbolic link
						linker.setf(menu_name[a00], menu_href[a00])
						
						#add (+1)
						a00 = a00 + 1
					end

					
					#linker.set(menu_name[2], menu_href[2], menu_set)
					#linker.set(menu_name[3], menu_href[3], menu_set)
					#rframe.display_image("icns/house.svg",36,36, false)
				element.end_long
				basics.end_group

				#basics.end_group
				list.end_list
			basics.end_group

		basics.end_group
		basics.end_navmenu

		# !(SCREEN CONTENT)
		basics.group("center","none")
			# **************************
			# PUT YOUR CODE CONTENT HERE
			# **************************
		
		#basics.insert_html('<header class="bg-primary text-white" style="background: url('img/background/cloud-server.jpeg');">')
		# => HEADER
			#format.header('b') #bg-header text-white
			basics.group("center","text-center set-bg")
				basics.jump_line(3)
				
				# Bigger icon
				rframe.display_image("icns/icon.png",146,146,false)
				basics.jump_line(2)

				# Main Title
				#set-bg-char
				basics.group("center","none")
					serial.printf(1,"<b>RubyFrame</b>")
				basics.end_group

				#Motto
				serial.printf(5,"<i>The power to serve</i>")
				basics.jump_line(2)

			basics.end_group
			#format.endheader

		# => BODY
			basics.section('license','container')
			basics.group("justify",'none')
				basics.jump_line(1)

				lorem_impsum = ['Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sit amet cursus sit amet dictum sit amet. Lacinia at quis risus sed vulputate odio ut enim blandit. Quam lacus suspendisse faucibus interdum posuere lorem ipsum. Pellentesque pulvinar pellentesque habitant morbi tristique. Scelerisque purus semper eget duis at tellus. Sapien et ligula ullamcorper malesuada proin libero nunc. Tortor at risus viverra adipiscing at in. Lacus viverra vitae congue eu consequat ac felis donec. Tristique nulla aliquet enim tortor at auctor urna nunc. Mattis pellentesque id nibh tortor. Tristique et egestas quis ipsum suspendisse ultrices gravida. Ut ornare lectus sit amet est. Amet justo donec enim diam vulputate ut pharetra sit amet. Consectetur adipiscing elit pellentesque habitant morbi tristique senectus et. Sed viverra ipsum nunc aliquet bibendum enim facilisis.']
				
				# Main title
				serial.printf(3,"<b>Know about our software license</b>")
				# description
				serial.printf(5, lorem_impsum[0]+lorem_impsum[0])
				basics.jump_line(3)

			basics.end_group
			basics.end_section
			
			basics.section('download','none container')
			basics.group("justify",'none')
				# Main title
				serial.printf(3,"<b>Download our product</b>")
				# description
				serial.printf(5, lorem_impsum[0])
				basics.jump_line(3)
			
				# RFrame Button
				basics.group("center","container")
					# Core
					basics.group("center",'default-bsd-btn')
						rframe.anchor(2,'Windows','#windows',false,false)
					basics.end_group
					# Core
					basics.group("center",'default-bsd-btn')
						rframe.anchor(2,'GNU/Linux','#linux',false,false)
					basics.end_group
					# Core
					basics.group("center",'default-bsd-btn')
						rframe.anchor(2,'macOS Big Sur','#big_sur',false,false)
					basics.end_group

				basics.end_group
				
				basics.jump_line(4)
				
			basics.end_group
			basics.end_section
			
			basics.section('product','none container')
			basics.group("justify",'none')
				# Main title
				serial.printf(3,"<b>What is our product?</b>")
				# description
				serial.printf(5, lorem_impsum[0])
				basics.jump_line(3)

			basics.end_group
			basics.end_section

			basics.section('contributions','none container')
			basics.group("justify",'none')
				# Main title
				serial.printf(3,"<b>Contributions</b>")
				# description
				serial.printf(5, lorem_impsum[0])
				basics.jump_line(3)

			basics.end_group
			basics.end_section

			basics.end_group

			# => FOOTER
			basics.group("center",'py-5 bg-dark text-white m-0')
				serial.print('<b>Free use, modify and distribute</b> <br>Gabriel Margarido 2021')
			basics.end_group

		basics.end_group

		javascript.end_responsive
	void.end
	
end