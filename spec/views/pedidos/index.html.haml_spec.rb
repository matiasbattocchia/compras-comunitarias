require 'spec_helper'

describe "pedidos/index" do
  before(:each) do
    assign(:pedidos, [
      stub_model(Pedido,
        :estado => "Estado"
      ),
      stub_model(Pedido,
        :estado => "Estado"
      )
    ])
  end

  it "renders a list of pedidos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
  end
end
