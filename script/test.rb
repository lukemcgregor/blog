#!/usr/bin/env ruby

require 'html-proofer'

task :default => [:test]

task :test do
	HTML::Proofer.new("./_site", {
		:href_ignore => [
			"#",
            "http://thomascoats.com/",
            "http://dotdev.io",
            "http://seofriendlysinglepageapp.azurewebsites.net/",
            "https://dotdev.io/scenario/61/the-best-tool-to-tell-me-when-my-website-goes-down"
        ]
	}).run
end