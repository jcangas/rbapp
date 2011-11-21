require "rbapp/version"
require 'thor'
require 'thor/group'

module Rbapp
	class Runner < Thor::Group
	  namespace ""
	  include Thor::Actions

	  # Define arguments and options
	  argument :name
	  class_option :sample, type: :boolean, default: false
	  class_option :ocra, type: :boolean, default: false

	  def self.source_root
	    File.dirname(__FILE__)
	  end

	  def create_bin_file
	    template('templates/app/bin/app.tt', "#{name}/bin/#{name}.rb")
	  end

	  def create_gem_file
	    template('templates/app/Gemfile.tt', "#{name}/Gemfile")
	  end

	  def create_app_file
	    template('templates/app/lib/app.tt', "#{name}/lib/#{name}.rb")
	  end

	  def create_version_file
	    template('templates/app/lib/app/version.tt', "#{name}/lib/#{name}/version.rb")
	  end

	  def copy_sample_task
	  	return unless options.sample?
	    copy_file "templates/app/lib/tasks/sample.thor", "#{name}/lib/tasks/sample.thor"	  
	  end
	end
end
