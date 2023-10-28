# frozen_string_literal: true

RSpec.describe RailsFromScratch::Application do
  include Rack::Test::Methods

  subject(:app) { described_class.new }

  before { get "/" }

  it { expect(last_response.status).to eq(200) }
  it { expect(last_response.body).to include("Hello from Rails from Scratch!") }
end

