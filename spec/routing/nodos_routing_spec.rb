require "spec_helper"

describe NodosController do
  describe "routing" do

    it "routes to #index" do
      get("/nodos").should route_to("nodos#index")
    end

    it "routes to #new" do
      get("/nodos/new").should route_to("nodos#new")
    end

    it "routes to #show" do
      get("/nodos/1").should route_to("nodos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/nodos/1/edit").should route_to("nodos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/nodos").should route_to("nodos#create")
    end

    it "routes to #update" do
      put("/nodos/1").should route_to("nodos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/nodos/1").should route_to("nodos#destroy", :id => "1")
    end

  end
end
