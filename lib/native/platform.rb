require 'ohai'

module Native
  class Platform
    def initialize
      @ohai = build_ohai
    end

    def name
      ohai_hash[:platform]
    end

    def version
      ohai_hash[:platform_version]
    end

    def ohai_hash
      @ohai
    end

    protected

    def build_ohai
      ohai = Ohai::System.new
      ohai.all_plugins
      ohai
    end
  end
end
