require 'rails_helper'

RSpec.describe "boot_scripts/show", :type => :view do
  before(:each) do
    @boot_script = assign(:boot_script, BootScript.create!(
      :file_name => "File Name",
      :body => "MyText",
      :user => nil,
      :accessibility => "Accessibility"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/File Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Accessibility/)
  end
end
