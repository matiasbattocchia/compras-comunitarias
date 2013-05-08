require 'spec_helper'

describe "nodos/new" do
  before(:each) do
    assign(:nodo, stub_model(Nodo,
      :nombre => "MyString"
    ).as_new_record)
  end

  it "renders new nodo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", nodos_path, "post" do
      assert_select "input#nodo_nombre[name=?]", "nodo[nombre]"
    end
  end
end
