require 'spec_helper'

describe "downloads/index" do
  before(:each) do
    assign(:downloads, [
      stub_model(Download,
        :id => 1,
        :request => "Request",
        :instrument_id => "Instrument",
        :file => ""
      ),
      stub_model(Download,
        :id => 1,
        :request => "Request",
        :instrument_id => "Instrument",
        :file => ""
      )
    ])
  end

  it "renders a list of downloads" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Request".to_s, :count => 2
    assert_select "tr>td", :text => "Instrument".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
