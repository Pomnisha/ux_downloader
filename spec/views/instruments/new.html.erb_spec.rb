require 'spec_helper'

describe "instruments/new" do
  before(:each) do
    assign(:instrument, stub_model(Instrument,
      :id => 1,
      :code => "MyString"
    ).as_new_record)
  end

  it "renders new instrument form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => instruments_path, :method => "post" do
      assert_select "input#instrument_id", :name => "instrument[id]"
      assert_select "input#instrument_code", :name => "instrument[code]"
    end
  end
end
