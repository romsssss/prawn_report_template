require './settings.rb'
include Settings

module BlocksContent

	def page_content(pdf, &block)
		pdf.bounding_box [0,(pdf.margin_box.height-HEADER_HEIGHT-HEADER_BOTTOM_MARGIN)],
							:width => pdf.margin_box.width,
							:height => (pdf.margin_box.height-(HEADER_HEIGHT+FOOTER_HEIGHT+HEADER_BOTTOM_MARGIN+FOOTER_BOTTOM_MARGIN)) do
			pdf.stroke_bounds if DISPLAY_RULES
			pdf.indent(0, &block)
		end
	end

	def header_content(pdf, &block)
		pdf.bounding_box [0,pdf.margin_box.height],
							:width => pdf.margin_box.width,
							:height => HEADER_HEIGHT do
			pdf.stroke_bounds if DISPLAY_RULES
			pdf.indent(0, &block)
		end
	end

	def footer_content(pdf, &block)
		pdf.bounding_box [0,FOOTER_HEIGHT],
							:width => pdf.margin_box.width,
							:height => FOOTER_HEIGHT do
			pdf.stroke_bounds if DISPLAY_RULES
			pdf.indent(0, &block)
		end
	end

end