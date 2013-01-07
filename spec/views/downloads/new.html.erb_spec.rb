require 'spec_helper'

describe "downloads/new" do
  before(:each) do
    assign(:download, stub_model(Download,
      :id => 1,
      :request => "MyString",
      :instrument_id => "MyString",
      :file => ""
    ).as_new_record)
  end

  it "renders new download form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => downloads_path, :method => "post" do
      assert_select "input#download_id", :name => "download[id]"
      assert_select "input#download_request", :name => "download[request]"
      assert_select "input#download_instrument_id", :name => "download[instrument_id]"
      assert_select "input#download_file", :name => "download[file]"
    end
  end
end
