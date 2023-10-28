# frozen_string_literal: true

require "rails_from_scratch/version"
require "rails_from_scratch/array"

module RailsFromScratch
  class Error < StandardError; end

  class Application
    def call(env)
      `echo debug > debug.txt`
      [
        200, {'Content-Type' => 'text/html'}, ["Hello from Rails from Scratch!"]
      ]
    end
  end
end
