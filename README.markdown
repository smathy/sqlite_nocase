SQLite Nocase
=================

This is a kludgy kludge until I get the time to work on a full and proper patch
to the core for an actual column option.  With this lib loaded ALL string and
text fields will be created with the NOCASE collation in SQLite.

Installation
------------

To perform a system wide installation:

	gem source -a http://gems.github.com
	sudo gem install JasonKing-sqlite_nocase

To use sqlite_nocase in your project, add the following line to your project's
config/environment.rb:

	config.gem 'JasonKing-sqlite_nocase', :lib => 'sqlite_nocase'

Once it's loaded, ALL migrations from that point on will add the NOCASE
collation for all table operations (CREATE and ALTER) on all string (varchar)
and text columns.

Contributors
------------
 
* Jason King (JasonKing)
