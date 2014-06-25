require "rails_helper"

RSpec.describe BootScriptsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/boot_scripts").to route_to("boot_scripts#index")
    end

    it "routes to #new" do
      expect(:get => "/boot_scripts/new").to route_to("boot_scripts#new")
    end

    it "routes to #show" do
      expect(:get => "/boot_scripts/1").to route_to("boot_scripts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/boot_scripts/1/edit").to route_to("boot_scripts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/boot_scripts").to route_to("boot_scripts#create")
    end

    it "routes to #update" do
      expect(:put => "/boot_scripts/1").to route_to("boot_scripts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/boot_scripts/1").to route_to("boot_scripts#destroy", :id => "1")
    end

  end
end
