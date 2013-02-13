require "spec_helper"

describe QuestionFieldsController do
  describe "routing" do

    it "routes to #index" do
      get("/question_fields").should route_to("question_fields#index")
    end

    it "routes to #new" do
      get("/question_fields/new").should route_to("question_fields#new")
    end

    it "routes to #show" do
      get("/question_fields/1").should route_to("question_fields#show", :id => "1")
    end

    it "routes to #edit" do
      get("/question_fields/1/edit").should route_to("question_fields#edit", :id => "1")
    end

    it "routes to #create" do
      post("/question_fields").should route_to("question_fields#create")
    end

    it "routes to #update" do
      put("/question_fields/1").should route_to("question_fields#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/question_fields/1").should route_to("question_fields#destroy", :id => "1")
    end

  end
end
