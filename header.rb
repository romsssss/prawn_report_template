require './settings.rb'
include Settings

class Header

	# INSTANCE VARIABLES
	attr_accessor :text_content, :pdf

	def initialize(pdf, content='')
		super()
		@pdf = pdf
		@text_content = content

		# We skip the cover page
		@pdf.repeat (2..@pdf.page_count()) do

			header_content @pdf do

				# # The header is an array composed of 1 raw and 3 columns
				# position_indexes = {:left=>0, :center=>1, :right=>2}
				# data=[['','','']]

				# # Header's logo
				# data[0][position_indexes[HEADER_LOGO_POSITION]] = HEADER_LOGO_FILE
				# #{ :image => "./img/logo.jpg" }
				# #, :fit => [@pdf.margin_box.width/3, HEADER_HEIGHT],
				# 									 			#:vposition => :center )
				# 									#			:position => HEADER_LOGO_POSITION
				# @pdf.table(data, :width => @pdf.margin_box.width)

				@pdf.fill_color HEADER_FONT_COLOR
				# Header's text
				@pdf.text @text_content, :size => HEADER_FONT_SIZE,
							:align => HEADER_TEXT_POSITION,
							#:color => HEADER_FONT_COLOR,
							:valign => :center if HEADER_TEXT_DISPLAY
				@pdf.fill_color BODY_FONT_COLOR

				# Header's logo
				@pdf.bounding_box([0, @pdf.cursor], :width => @pdf.margin_box.width, :height => HEADER_HEIGHT) do

				@pdf.image "./img/logo.jpg", :fit => [@pdf.margin_box.width/3, HEADER_HEIGHT],
							:vposition => :center,
							:position => HEADER_LOGO_POSITION if HEADER_LOGO_DISPLAY
				end
			 end

		end
	end

end