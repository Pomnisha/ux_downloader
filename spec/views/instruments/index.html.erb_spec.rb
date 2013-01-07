require 'spec_helper'

describe "instruments/index" do
  before(:each) do
    assign(:instruments, [
      stub_model(Instrument,
        :id => 1,
        :code => "Code"
      ),
      stub_model(Instrument,
        :id => 1,
        :code => "Code"
      )
    ])
  end

  it "renders a list of instruments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
  end
end
