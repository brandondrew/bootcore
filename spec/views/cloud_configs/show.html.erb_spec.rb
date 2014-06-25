require 'rails_helper'

RSpec.describe "cloud_configs/show", :type => :view do
  before(:each) do
    @cloud_config = assign(:cloud_config, CloudConfig.create!(
      :user => nil,
      :accessibility => "Accessibility"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Accessibility/)
  end
end
