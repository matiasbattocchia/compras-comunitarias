require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe NodosController do

  # This should return the minimal set of attributes required to create a valid
  # Nodo. As you add validations to Nodo, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "nombre" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # NodosController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all nodos as @nodos" do
      nodo = Nodo.create! valid_attributes
      get :index, {}, valid_session
      assigns(:nodos).should eq([nodo])
    end
  end

  describe "GET show" do
    it "assigns the requested nodo as @nodo" do
      nodo = Nodo.create! valid_attributes
      get :show, {:id => nodo.to_param}, valid_session
      assigns(:nodo).should eq(nodo)
    end
  end

  describe "GET new" do
    it "assigns a new nodo as @nodo" do
      get :new, {}, valid_session
      assigns(:nodo).should be_a_new(Nodo)
    end
  end

  describe "GET edit" do
    it "assigns the requested nodo as @nodo" do
      nodo = Nodo.create! valid_attributes
      get :edit, {:id => nodo.to_param}, valid_session
      assigns(:nodo).should eq(nodo)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Nodo" do
        expect {
          post :create, {:nodo => valid_attributes}, valid_session
        }.to change(Nodo, :count).by(1)
      end

      it "assigns a newly created nodo as @nodo" do
        post :create, {:nodo => valid_attributes}, valid_session
        assigns(:nodo).should be_a(Nodo)
        assigns(:nodo).should be_persisted
      end

      it "redirects to the created nodo" do
        post :create, {:nodo => valid_attributes}, valid_session
        response.should redirect_to(Nodo.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved nodo as @nodo" do
        # Trigger the behavior that occurs when invalid params are submitted
        Nodo.any_instance.stub(:save).and_return(false)
        post :create, {:nodo => { "nombre" => "invalid value" }}, valid_session
        assigns(:nodo).should be_a_new(Nodo)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Nodo.any_instance.stub(:save).and_return(false)
        post :create, {:nodo => { "nombre" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested nodo" do
        nodo = Nodo.create! valid_attributes
        # Assuming there are no other nodos in the database, this
        # specifies that the Nodo created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Nodo.any_instance.should_receive(:update_attributes).with({ "nombre" => "MyString" })
        put :update, {:id => nodo.to_param, :nodo => { "nombre" => "MyString" }}, valid_session
      end

      it "assigns the requested nodo as @nodo" do
        nodo = Nodo.create! valid_attributes
        put :update, {:id => nodo.to_param, :nodo => valid_attributes}, valid_session
        assigns(:nodo).should eq(nodo)
      end

      it "redirects to the nodo" do
        nodo = Nodo.create! valid_attributes
        put :update, {:id => nodo.to_param, :nodo => valid_attributes}, valid_session
        response.should redirect_to(nodo)
      end
    end

    describe "with invalid params" do
      it "assigns the nodo as @nodo" do
        nodo = Nodo.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Nodo.any_instance.stub(:save).and_return(false)
        put :update, {:id => nodo.to_param, :nodo => { "nombre" => "invalid value" }}, valid_session
        assigns(:nodo).should eq(nodo)
      end

      it "re-renders the 'edit' template" do
        nodo = Nodo.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Nodo.any_instance.stub(:save).and_return(false)
        put :update, {:id => nodo.to_param, :nodo => { "nombre" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested nodo" do
      nodo = Nodo.create! valid_attributes
      expect {
        delete :destroy, {:id => nodo.to_param}, valid_session
      }.to change(Nodo, :count).by(-1)
    end

    it "redirects to the nodos list" do
      nodo = Nodo.create! valid_attributes
      delete :destroy, {:id => nodo.to_param}, valid_session
      response.should redirect_to(nodos_url)
    end
  end

end
