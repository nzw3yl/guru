require "spec_helper"

describe QuestionTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/question_types").should route_to("question_types#index")
    end

    it "routes to #new" do
      get("/question_types/new").should route_to("question_types#new")
    end

    it "routes to #show" do
      get("/question_types/1").should route_to("question_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/question_types/1/edit").should route_to("question_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/question_types").should route_to("question_types#create")
    end

    it "routes to #update" do
      put("/question_types/1").should route_to("question_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/question_types/1").should route_to("question_types#destroy", :id => "1")
    end

  end
end
