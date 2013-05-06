require 'spec_helper'

describe "productos/edit" do
  before(:each) do
    @producto = assign(:producto, stub_model(Producto,
      :descripcion => "MyString"
    ))
  end

  it "renders the edit producto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", producto_path(@producto), "post" do
      assert_select "input#producto_descripcion[name=?]", "producto[descripcion]"
    end
  end
end
