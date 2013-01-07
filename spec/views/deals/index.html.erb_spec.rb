require 'spec_helper'

describe "deals/index" do
  before(:each) do
    assign(:deals, [
      stub_model(Deal,
        :id => 1,
        :instrument_id => "Instrument",
        :per => "Per",
        :price => 1.5,
        :amount => 2
      ),
      stub_model(Deal,
        :id => 1,
        :instrument_id => "Instrument",
        :per => "Per",
        :price => 1.5,
        :amount => 2
      )
    ])
  end

  it "renders a list of deals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Instrument".to_s, :count => 2
    assert_select "tr>td", :text => "Per".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
