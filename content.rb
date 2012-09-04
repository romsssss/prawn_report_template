require './settings.rb'
include Settings

class Content

	# INSTANCE VARIABLES
	attr_accessor :text_content, :pdf

	def initialize(pdf)
		super()
		@pdf = pdf

		@pdf.start_new_page
		page_content @pdf do
			@pdf.section "Section"
			@pdf.subsection "SubSection"
			@pdf.text "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rhoncus neque in mi sodales ullamcorper. Vestibulum auctor gravida nisl vitae fringilla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam tellus leo, porttitor ut dignissim ac, ultrices sit amet tellus. Maecenas eu nisi felis, at sagittis nisl. Mauris mattis sem et diam convallis condimentum. Suspendisse potenti. Aenean nec arcu ut odio molestie pulvinar vitae non risus. Cras sollicitudin ornare libero, non feugiat massa porta ut. Proin porttitor, arcu suscipit porttitor consequat, purus justo dapibus leo, ac iaculis nibh leo sed dui. Suspendisse condimentum posuere erat at dignissim. Nullam aliquet porttitor nibh."
			@pdf.move_down 10
			@pdf.subsection "SubSection"
			@pdf.text "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rhoncus neque in mi sodales ullamcorper. Vestibulum auctor gravida nisl vitae fringilla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam tellus leo, porttitor ut dignissim ac, ultrices sit amet tellus. Maecenas eu nisi felis, at sagittis nisl. Mauris mattis sem et diam convallis condimentum. Suspendisse potenti. Aenean nec arcu ut odio molestie pulvinar vitae non risus. Cras sollicitudin ornare libero, non feugiat massa porta ut. Proin porttitor, arcu suscipit porttitor consequat, purus justo dapibus leo, ac iaculis nibh leo sed dui. Suspendisse condimentum posuere erat at dignissim. Nullam aliquet porttitor nibh."
			@pdf.move_down 10
		end

		@pdf.start_new_page
		page_content @pdf do
			@pdf.section "Section"
			@pdf.subsection "SubSection"
			@pdf.subsubsection "SubSubSection"
			@pdf.text "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rhoncus neque in mi sodales ullamcorper. Vestibulum auctor gravida nisl vitae fringilla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam tellus leo, porttitor ut dignissim ac, ultrices sit amet tellus. Maecenas eu nisi felis, at sagittis nisl. Mauris mattis sem et diam convallis condimentum. Suspendisse potenti. Aenean nec arcu ut odio molestie pulvinar vitae non risus. Cras sollicitudin ornare libero, non feugiat massa porta ut. Proin porttitor, arcu suscipit porttitor consequat, purus justo dapibus leo, ac iaculis nibh leo sed dui. Suspendisse condimentum posuere erat at dignissim. Nullam aliquet porttitor nibh."
			@pdf.move_down 10
			@pdf.subsubsection "SubSubSection"
			@pdf.text "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rhoncus neque in mi sodales ullamcorper. Vestibulum auctor gravida nisl vitae fringilla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam tellus leo, porttitor ut dignissim ac, ultrices sit amet tellus. Maecenas eu nisi felis, at sagittis nisl. Mauris mattis sem et diam convallis condimentum. Suspendisse potenti. Aenean nec arcu ut odio molestie pulvinar vitae non risus. Cras sollicitudin ornare libero, non feugiat massa porta ut. Proin porttitor, arcu suscipit porttitor consequat, purus justo dapibus leo, ac iaculis nibh leo sed dui. Suspendisse condimentum posuere erat at dignissim. Nullam aliquet porttitor nibh."
			@pdf.move_down 10
			@pdf.subsection "SubSection"
			@pdf.text "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rhoncus neque in mi sodales ullamcorper. Vestibulum auctor gravida nisl vitae fringilla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam tellus leo, porttitor ut dignissim ac, ultrices sit amet tellus. Maecenas eu nisi felis, at sagittis nisl. Mauris mattis sem et diam convallis condimentum. Suspendisse potenti. Aenean nec arcu ut odio molestie pulvinar vitae non risus. Cras sollicitudin ornare libero, non feugiat massa porta ut. Proin porttitor, arcu suscipit porttitor consequat, purus justo dapibus leo, ac iaculis nibh leo sed dui. Suspendisse condimentum posuere erat at dignissim. Nullam aliquet porttitor nibh."
			@pdf.move_down 10
			@pdf.text "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rhoncus neque in mi sodales ullamcorper. Vestibulum auctor gravida nisl vitae fringilla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam tellus leo, porttitor ut dignissim ac, ultrices sit amet tellus. Maecenas eu nisi felis, at sagittis nisl. Mauris mattis sem et diam convallis condimentum. Suspendisse potenti. Aenean nec arcu ut odio molestie pulvinar vitae non risus. Cras sollicitudin ornare libero, non feugiat massa porta ut. Proin porttitor, arcu suscipit porttitor consequat, purus justo dapibus leo, ac iaculis nibh leo sed dui. Suspendisse condimentum posuere erat at dignissim. Nullam aliquet porttitor nibh."
			@pdf.move_down 10
			@pdf.text "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rhoncus neque in mi sodales ullamcorper. Vestibulum auctor gravida nisl vitae fringilla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam tellus leo, porttitor ut dignissim ac, ultrices sit amet tellus. Maecenas eu nisi felis, at sagittis nisl. Mauris mattis sem et diam convallis condimentum. Suspendisse potenti. Aenean nec arcu ut odio molestie pulvinar vitae non risus. Cras sollicitudin ornare libero, non feugiat massa porta ut. Proin porttitor, arcu suscipit porttitor consequat, purus justo dapibus leo, ac iaculis nibh leo sed dui. Suspendisse condimentum posuere erat at dignissim. Nullam aliquet porttitor nibh."
			@pdf.move_down 10
		end

	end

end