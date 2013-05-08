require 'spec_helper'

describe "nodos/edit" do
  before(:each) do
    @nodo = assign(:nodo, stub_model(Nodo,
      :nombre => "MyString"
    ))
  end

  it "renders the edit nodo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", nodo_path(@nodo), "post" do
      assert_select "input#nodo_nombre[name=?]", "nodo[nombre]"
    end
  end
end
