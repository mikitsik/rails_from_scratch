# frozen_string_literal: true

require "rails_from_scratch/version"
require "rails_from_scratch/array"
require "rails_from_scratch/routing"
require "rails_from_scratch/util"
require "rails_from_scratch/dependencies"

module RailsFromScratch
  class Error < StandardError; end

  class Application
    def call(env)
      if env['PATH_INFO'] == '/favicon.ico'
        return [404, {'Content-Type' => 'text/html'}, []]
      elsif env['PATH_INFO'] == '/'
        return [200, {'Content-Type' => 'text/html'}, ["hi, the main page"]]
      end

      klass, act = get_controller_and_action(env)
      controller = klass.new(env)
      text = controller.send(act)
      [200, {'Content-Type' => 'text/html'}, [text]]
    end
  end

  class Controller
    def initialize(env)
      @env = env
    end

    private

    attr_reader :env
  end
end
