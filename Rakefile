require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('rupees', '0.1.0') do |p|
		  p.description = "Convert number to Indian rupee(Rs)"
		  p.url = "http://github.com/shivisngh/rupees"
		  p.author = "Shiv Singh"
		  p.email = "shivsingh@railsfactory.org"
		  p.ignore_pattern = ["tmp/*", "script/*"]
		  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each{|ext| load ext}