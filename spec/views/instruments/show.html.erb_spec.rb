require 'spec_helper'

describe "instruments/show" do
  before(:each) do
    @instrument = assign(:instrument, stub_model(Instrument,
      :id => 1,
      :code => "Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Code/)
  end
end
