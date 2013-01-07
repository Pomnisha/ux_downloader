require 'spec_helper'

describe "instruments/edit" do
  before(:each) do
    @instrument = assign(:instrument, stub_model(Instrument,
      :id => 1,
      :code => "MyString"
    ))
  end

  it "renders the edit instrument form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => instruments_path(@instrument), :method => "post" do
      assert_select "input#instrument_id", :name => "instrument[id]"
      assert_select "input#instrument_code", :name => "instrument[code]"
    end
  end
end
