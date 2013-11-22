require 'spec_helper'

describe LambsController do

  describe "GET 'index'" do
    before do
      get :index
    end

    it { should respond_with(:success) }

    it { should render_template(:index) }

    it "assigns all lambs as @lambs" do
      lamb = Lamb.create
      get :index
      expect(assigns(:lambs)).to match_array([lamb])
    end

  end

  describe "GET 'create'" do
    before do
      json = { :format => 'json', :lamb => {} }
      post :create, json
    end

    it { should respond_with(:success) }

    it "responds with the newly created lamb as json" do
      expect(response.body).to eq(assigns(:lamb).to_json)
    end
  end

  describe "GET 'update'" do
    before do
      lamb = Lamb.create
      json = { :format => 'json', id: lamb.id, :lamb => {} }
      put :update, json
    end

    it { should respond_with(:success) }

    it "finds the lamb and wakes it up in the db" do
      lamb = Lamb.create
      lamb.is_silent = true
      json = { :format => 'json', id: lamb.id, :lamb => lamb }
      put :update, json
      expect(assigns(:lamb).to_json).to eq(lamb.to_json)
    end

    it "responds with the updated lamb as json" do
      expect(response.body).to eq(assigns(:lamb).to_json)
    end
  end

end
