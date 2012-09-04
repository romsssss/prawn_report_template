require './settings.rb'
include Settings

class Cover

	attr_accessor :pdf

	def initialize(pdf)
		super()
		@pdf = pdf
		@pdf.text "Cover page "

		@pdf.stroke_bounds if DISPLAY_RULES
	end

end