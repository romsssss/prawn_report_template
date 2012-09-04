require "prawn"
require "./report_pdf.rb"

# render the template
ReportPdf.new().render_file "report.pdf"
