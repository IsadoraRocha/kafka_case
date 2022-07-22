require 'report_builder'
require 'date'
at_exit do
  ReportBuilder.configure do |config|
    config.input_path = 'report/report.json'
    config.report_path = 'report/REPORT'
    config.report_types = [:html]
    config.voice_commands = true
    config.color = 'grey'
    config.additional_info = { DateTime: DateTime.now, Nome: 'Teste VR' }
  end
  ReportBuilder.build_report
end
