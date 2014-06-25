require 'rails_helper'

RSpec.describe "CloudConfigs", :type => :request do
  describe "GET /cloud_configs" do
    it "works! (now write some real specs)" do
      get cloud_configs_path
      expect(response.status).to be(200)
    end
  end
end
