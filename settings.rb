module Settings

	#######################
	#   GLOBAL SETTINGS   #
	#######################

	###### GENERAL
	##
	# When enable all container border are displayed
	# Useful when editing the current settings
	DISPLAY_RULES = true
	RULES_COLOR = "c5c5c5"
	# Page format
	PAGE_SIZE = 'A4'	# {'A0', ...  'A9'}
	# Page layout
	PAGE_LAYOUT = :portrait	#{:portrait, :landscape}
	# The font for all the text content
	BODY_FONT = "Helvetica"
	BODY_FONT_SIZE = 12
	BODY_FONT_COLOR = "FF0000"

	###### MARGINS
	##
	# The margins for all the pages
	GLOBAL_MARGINS = [36, 36, 36, 36]	# [top, right, bottom, left]
	# Height of the header
	HEADER_HEIGHT = 30	# 0 to disable the header,
	# Height of the footer
	FOOTER_HEIGHT = 30	# 0 to disable the footer

	####### COVER
	##

	###### HEADER
	##
	# Header's logo
	HEADER_LOGO_DISPLAY = false
	HEADER_LOGO_POSITION = :left	# {:left, :center, :right}
	HEADER_LOGO_FILE = './img/logo.jpg'
	# Header's text
	HEADER_TEXT_DISPLAY = true
	HEADER_TEXT_POSITION = :right	# {:left, :center, :right}
	# Header's font
	HEADER_FONT = "Helvetica"
	HEADER_FONT_SIZE = 10
	HEADER_FONT_COLOR = "0000FF"
	# Header's margin
	HEADER_BOTTOM_MARGIN = 10	# the gap size between the header and the content

	###### FOOTER
	##
	# Footer's pagination
	FOOTER_PAGINATION_DISPLAY = true
	FOOTER_PAGINATION_POSITION = :center	# {:left, :center, :right}
	# Footer's text
	FOOTER_TEXT_DISPLAY = true
	FOOTER_TEXT_POSITION = :right	# {:left, :center, :right}
	# Footer's font
	FOOTER_FONT = "Helvetica"
	FOOTER_FONT_SIZE = 12
	FOOTER_FONT_COLOR= "00FF00"
	# Footer's margin
	FOOTER_BOTTOM_MARGIN = 10 # the gap size between the footer and the content



	#######################
	#   CONTENT SETTINGS  #
	#######################

	###### SECTIONS
	##
	SECTION_FONT = "Helvetica"
	SECTION_FONT_SIZE = 18
	SECTION_FONT_COLOR = "92d050"
	SECTION_STYLE = [:bold]	# {:bold, :italic}
	SECTION_INDENTATION = 0
	SECTION_PADDING = [0, 10]	# [top, bottom]

	###### SUBSECTIONS
	##
	SUBSECTION_FONT = "Helvetica"
	SUBSECTION_FONT_SIZE = 16
	SUBSECTION_FONT_COLOR = "92d050"
	SUBSECTION_STYLE = []	# {:bold, :italic}
	SUBSECTION_INDENTATION = 20
	SUBSECTION_PADDING = [0, 10]	# [top, bottom]

	###### SUBSUBSECTIONS
	##
	SUBSUBSECTION_FONT = "Helvetica"
	SUBSUBSECTION_FONT_SIZE = 14
	SUBSUBSECTION_FONT_COLOR = "92d050"
	SUBSUBSECTION_STYLE = [:italic]	# {:bold, :italic}
	SUBSUBSECTION_INDENTATION = 40
	SUBSUBSECTION_PADDING = [0, 10]	# [top, bottom]



	################################
	#   CHECK PARAMETERS VALUES   #
	################################

	# The height of the header can't be lower than the height of the font
	HEADER_HEIGHT = HEADER_FONT_SIZE if HEADER_HEIGHT < HEADER_FONT_SIZE && HEADER_HEIGHT>0

	# The height of the footer can't be lower than the height of the font
	FOOTER_HEIGHT = FOOTER_FONT_SIZE if FOOTER_HEIGHT < FOOTER_FONT_SIZE && FOOTER_HEIGHT>0

end