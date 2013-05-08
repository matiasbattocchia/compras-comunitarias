require 'spec_helper'

describe "nodos/show" do
  before(:each) do
    @nodo = assign(:nodo, stub_model(Nodo,
      :nombre => "Nombre"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre/)
  end
end
