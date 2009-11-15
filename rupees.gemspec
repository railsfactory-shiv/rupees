# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rupees}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Shiv Singh"]
  s.date = %q{2009-11-15}
  s.description = %q{Convert number to Indian rupee(Rs)}
  s.email = %q{shivsingh@railsfactory.org}
  s.extra_rdoc_files = ["README.rdoc", "lib/rupees.rb"]
  s.files = ["README.rdoc", "Rakefile", "lib/rupees.rb", "Manifest", "rupees.gemspec"]
  s.homepage = %q{http://github.com/shivisngh/rupees}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Rupees", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{rupees}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Convert number to Indian rupee(Rs)}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
