require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task default: :spec

desc "Export all json files."
task :export_all_jsons do
  FileUtils.mkdir_p("output") if !File.exist?("output")
  require "emoji/data"
  IO.write "output/emoji-data.json", Emoji::Data.emoji_data_json
  IO.write "output/emoji-sequences.json", Emoji::Data.emoji_sequences_json
  IO.write "output/emoji-zwj-sequences.json", Emoji::Data.emoji_zwj_sequences_json
  IO.write "output/emoji-utr-51.json", Emoji::Data.emoji_utr_51_json
end
