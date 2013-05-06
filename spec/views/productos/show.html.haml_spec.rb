require 'spec_helper'

describe "productos/show" do
  before(:each) do
    @producto = assign(:producto, stub_model(Producto,
      :descripcion => "Descripcion"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Descripcion/)
  end
end
