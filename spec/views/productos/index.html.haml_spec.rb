require 'spec_helper'

describe "productos/index" do
  before(:each) do
    assign(:productos, [
      stub_model(Producto,
        :descripcion => "Descripcion"
      ),
      stub_model(Producto,
        :descripcion => "Descripcion"
      )
    ])
  end

  it "renders a list of productos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Descripcion".to_s, :count => 2
  end
end
