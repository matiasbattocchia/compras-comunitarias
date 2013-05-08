require 'spec_helper'

describe "nodos/index" do
  before(:each) do
    assign(:nodos, [
      stub_model(Nodo,
        :nombre => "Nombre"
      ),
      stub_model(Nodo,
        :nombre => "Nombre"
      )
    ])
  end

  it "renders a list of nodos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
  end
end
