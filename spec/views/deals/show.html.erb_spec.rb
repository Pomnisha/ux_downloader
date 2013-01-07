require 'spec_helper'

describe "deals/show" do
  before(:each) do
    @deal = assign(:deal, stub_model(Deal,
      :id => 1,
      :instrument_id => "Instrument",
      :per => "Per",
      :price => 1.5,
      :amount => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Instrument/)
    rendered.should match(/Per/)
    rendered.should match(/1.5/)
    rendered.should match(/2/)
  end
end
