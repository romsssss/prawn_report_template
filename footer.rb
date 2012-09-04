require './settings.rb'
include Settings

class Footer

	# INSTANCE VARIABLES
	attr_accessor :text_content, :pdf

	def initialize(pdf, content='')
		super()
		@pdf = pdf
		@text_content = content

		# We skip the cover page
		@pdf.repeat (2..@pdf.page_count()) do
			footer_content @pdf do
				# Footer text
				@pdf.fill_color FOOTER_FONT_COLOR
				@pdf.text @text_content, :size => FOOTER_FONT_SIZE,
								:align => FOOTER_TEXT_POSITION,
								#:color => FOOTER_FONT_COLOR,
								:valign => :center if FOOTER_TEXT_DISPLAY
				@pdf.fill_color BODY_FONT_COLOR

				# # Footer's pagination
				# text "#{page_number}/#{page_count()}", :size => FOOTER_FONT_SIZE,
				# 				:align => FOOTER_PAGINATION_POSITION,
				# 				:color => FOOTER_FONT_COLOR if FOOTER_PAGINATION_DISPLAY

				# Footer's pagination
				# @pdf.number_pages "<page> - <total>",
				# 	{
				# 		:start_count_at => 1,
				# 		#:page_filter => lambda{ |pg| pg != 1 },	# we skip the first page
				# 		#:at => [bounds.right-200, 0],
				# 		:align => FOOTER_PAGINATION_POSITION,
				# 		:size => FOOTER_FONT_SIZE,
				# 		:color => FOOTER_FONT_COLOR
				# 	} if FOOTER_PAGINATION_DISPLAY

				 # @pdf.stroke_bounds if DISPLAY_RULES
			end
		 end

		# Page numbering
		# number_pages "<page> / <total>",
		# 	{
		# 		:start_count_at => 1,
		# 		#:page_filter => lambda{ |pg| pg != 1 },	# we skip the first page
		# 		#:at => [bounds.right-200, 0],
		# 		:align => PAGES_NUMBERS_POSITION,
		# 		:size => FOOTER_FONT_SIZE,
		# 		:color => FOOTER_FONT_COLOR
		# 	} if DISPLAY_PAGES_NUMBERS
	end
end