require 'rails_helper'

RSpec.describe "boot_scripts/index", :type => :view do
  before(:each) do
    assign(:boot_scripts, [
      BootScript.create!(
        :file_name => "File Name",
        :body => "MyText",
        :user => nil,
        :accessibility => "Accessibility"
      ),
      BootScript.create!(
        :file_name => "File Name",
        :body => "MyText",
        :user => nil,
        :accessibility => "Accessibility"
      )
    ])
  end

  it "renders a list of boot_scripts" do
    render
    assert_select "tr>td", :text => "File Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Accessibility".to_s, :count => 2
  end
end
