# -*- encoding: utf-8 -*-

module_name = "sqlite_nocase"

Gem::Specification.new do |s|
  s.version = "0.0.1"
  s.author = "Jason King"
  s.summary = %q{Makes SQLite create case-insensitive string and text fields}

	s.files = %w{README.markdown lib/sqlite_nocase.rb}

	#s.test_files       = Dir.glob('tests/*.rb')

	s.rubyforge_project = nil
  s.name = module_name
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.date = Time.now.strftime("%Y-%m-%d")
  s.email = %q{jk@handle.it}
  s.has_rdoc = true
  s.homepage = "http://github.com/JasonKing/#{module_name}"
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = Gem::RubyGemsVersion
	s.platform         = Gem::Platform::RUBY

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sqlite3-ruby>, [">= 1.0"])
    else
      s.add_dependency(%q<sqlite3-ruby>, [">= 1.0"])
    end
  else
    s.add_dependency(%q<sqlite3-ruby>, [">= 1.0"])
  end
end

