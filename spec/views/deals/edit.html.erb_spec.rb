require 'spec_helper'

describe "deals/edit" do
  before(:each) do
    @deal = assign(:deal, stub_model(Deal,
      :id => 1,
      :instrument_id => "MyString",
      :per => "MyString",
      :price => 1.5,
      :amount => 1
    ))
  end

  it "renders the edit deal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => deals_path(@deal), :method => "post" do
      assert_select "input#deal_id", :name => "deal[id]"
      assert_select "input#deal_instrument_id", :name => "deal[instrument_id]"
      assert_select "input#deal_per", :name => "deal[per]"
      assert_select "input#deal_price", :name => "deal[price]"
      assert_select "input#deal_amount", :name => "deal[amount]"
    end
  end
end
