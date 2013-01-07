require 'spec_helper'

describe "downloads/show" do
  before(:each) do
    @download = assign(:download, stub_model(Download,
      :id => 1,
      :request => "Request",
      :instrument_id => "Instrument",
      :file => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Request/)
    rendered.should match(/Instrument/)
    rendered.should match(//)
  end
end
