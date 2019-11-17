require "rails_helper"

RSpec.describe TaxesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/taxes").to route_to("taxes#index")
    end

    it "routes to #show" do
      expect(:get => "/taxes/1").to route_to("taxes#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/taxes").to route_to("taxes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/taxes/1").to route_to("taxes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/taxes/1").to route_to("taxes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/taxes/1").to route_to("taxes#destroy", :id => "1")
    end
  end
end
