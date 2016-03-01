# Must be placed at the beginning
# @see https://github.com/colszowka/simplecov#getting-started
unless ENV['PARALLEL']
  if ENV['RAILS_ENV'] =~ /^test(.*)?/
    require 'simplecov'
    SimpleCov.start 'rails' do
      # Default is just 10 mins, else will drop "old" coverage data
      merge_timeout 3600
      puts ENV['TEST_ENV_NUMBER']
      command_name "specs_#{Process.pid}"
      add_filter "/spec/"
      add_filter "/tmp/"
      add_filter "/db/"
    end
  end
end
