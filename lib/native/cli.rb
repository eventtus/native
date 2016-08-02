require 'thor'
require 'native'
require 'bundler'

module Native
  # Command Line Interface
  class Cli < Thor
    desc 'list', 'list native packages required by the catalog entries'
    method_option :file, default: 'Gemfile.lock', desc: 'dependency file'
    def list(file)
      lockfile = ::Bundler::LockfileParser.new(Bundler.read_file(file))
      puts lockfile.specs.map(&:name)
    end

    desc 'detect', 'detect and print platform and package provider information'
    def detect
      platform = Native::Platform.new
      puts "Detected OS: #{platform.inspect} #{platform.version}"
    end

    desc 'version', 'print version information'
    def version
      puts "Native version #{VERSION}"
    end
  end
end
