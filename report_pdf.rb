require './settings.rb'
require './blocks_content.rb'
require './sections.rb'
require './cover.rb'
require './content.rb'
require './footer.rb'
require './header.rb'
include Settings
include BlocksContent
include Sections

class ReportPdf < Prawn::Document

	# INSTANCE VARIABLES
	attr_accessor :current_section, :current_subsection, :current_subsubsection

	def initialize()
		super(
			:margin => GLOBAL_MARGINS,
			:page_size => PAGE_SIZE,
			:page_layout => PAGE_LAYOUT
		)

		#Instance variable initialisation
		@current_section, @current_subsection, @current_subsubsection = 0

		# default settings
		font BODY_FONT
		font_size BODY_FONT_SIZE
		fill_color BODY_FONT_COLOR
		stroke_color RULES_COLOR

		cover_page = Cover.new(self)
		content = Content.new(self)
		headers = Header.new(self, "Document title - 00/00/0000") if HEADER_HEIGHT > 0
		footers = Footer.new(self, "footer_text") if FOOTER_HEIGHT > 0

	end

	def section title
		@current_section += 1
		@current_subsection, @current_subsubsection = 0
		create_section self, @current_section, title
	end

	def subsection title
		@current_subsection += 1
		@current_subsubsection = 0
		create_subsection self, @current_section, @current_subsection, title
	end

	def subsubsection title
		@current_subsubsection += 1
		create_subsubsection self, @current_section, @current_subsection, @current_subsubsection, title
	end

end