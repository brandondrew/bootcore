require "rails_helper"

RSpec.describe CloudConfigsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/cloud_configs").to route_to("cloud_configs#index")
    end

    it "routes to #new" do
      expect(:get => "/cloud_configs/new").to route_to("cloud_configs#new")
    end

    it "routes to #show" do
      expect(:get => "/cloud_configs/1").to route_to("cloud_configs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/cloud_configs/1/edit").to route_to("cloud_configs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/cloud_configs").to route_to("cloud_configs#create")
    end

    it "routes to #update" do
      expect(:put => "/cloud_configs/1").to route_to("cloud_configs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cloud_configs/1").to route_to("cloud_configs#destroy", :id => "1")
    end

  end
end
