require 'rails_helper'

RSpec.describe "BootScripts", :type => :request do
  describe "GET /boot_scripts" do
    it "works! (now write some real specs)" do
      get boot_scripts_path
      expect(response.status).to be(200)
    end
  end
end
