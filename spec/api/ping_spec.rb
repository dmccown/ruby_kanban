require 'spec_helper'

describe Kanban::API do
  include Rack::Test::Methods

  def app
    Kanban::API
  end

  describe Kanban::API do
    it "returns pong" do
      get "/api/ping"
      expect(last_response.status).to eq(200)
      expect(JSON.parse(last_response.body)).to eq "ping"=>"pong"
    end
  end
end
