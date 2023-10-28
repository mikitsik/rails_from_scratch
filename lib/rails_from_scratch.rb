# frozen_string_literal: true

require_relative "rails_from_scratch/version"

module RailsFromScratch
  class Error < StandardError; end

  class Application
    def call(env)
      [
        200, {'Content-Type' => 'text/html'}, ["Hello from Rails from Scratch!"]
      ]
    end
  end
end
