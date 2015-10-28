require "rails_helper"

RSpec.describe ManipuulyatorsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/manipuulyators").to route_to("manipuulyators#index")
    end

    it "routes to #new" do
      expect(:get => "/manipuulyators/new").to route_to("manipuulyators#new")
    end

    it "routes to #show" do
      expect(:get => "/manipuulyators/1").to route_to("manipuulyators#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/manipuulyators/1/edit").to route_to("manipuulyators#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/manipuulyators").to route_to("manipuulyators#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/manipuulyators/1").to route_to("manipuulyators#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/manipuulyators/1").to route_to("manipuulyators#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/manipuulyators/1").to route_to("manipuulyators#destroy", :id => "1")
    end

  end
end
