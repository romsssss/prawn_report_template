require './settings.rb'
include Settings

module Sections

	def create_section(pdf, section_number, title)
		pdf.move_down SECTION_PADDING[0]
		pdf.formatted_text [
			{
				:text => "#{section_number} - #{title}",
				:color => SECTION_FONT_COLOR,
				:font => SECTION_FONT,
				:styles => SECTION_STYLE
			}
		], :size => SECTION_FONT_SIZE,:indent_paragraphs => SECTION_INDENTATION
		pdf.move_down SECTION_PADDING[1]
	end

	def create_subsection(pdf, section_number, subsection_number, title)
		pdf.move_down SUBSECTION_PADDING[0]
		pdf.formatted_text [
			{
				:text => "#{section_number}.#{subsection_number} - #{title}",
				:color => SUBSECTION_FONT_COLOR,
				:font => SUBSECTION_FONT,
				:styles => SUBSECTION_STYLE
			}
		], :size => SUBSECTION_FONT_SIZE, :indent_paragraphs => SUBSECTION_INDENTATION
		pdf.move_down SUBSECTION_PADDING[1]
	end

	def create_subsubsection(pdf, section_number, subsection_number, subsubsection_number , title)
		pdf.move_down SUBSUBSECTION_PADDING[0]
		pdf.formatted_text [
			{
				:text => "#{section_number}.#{subsection_number}.#{subsubsection_number} - #{title}",
				:color => SUBSUBSECTION_FONT_COLOR,
				:font => SUBSUBSECTION_FONT,
				:styles => SUBSUBSECTION_STYLE
			}
		], :size => SUBSUBSECTION_FONT_SIZE, :indent_paragraphs => SUBSUBSECTION_INDENTATION
		pdf.move_down SUBSUBSECTION_PADDING[1]
	end

end