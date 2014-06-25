require 'rails_helper'

RSpec.describe "cloud_configs/index", :type => :view do
  before(:each) do
    assign(:cloud_configs, [
      CloudConfig.create!(
        :user => nil,
        :accessibility => "Accessibility"
      ),
      CloudConfig.create!(
        :user => nil,
        :accessibility => "Accessibility"
      )
    ])
  end

  it "renders a list of cloud_configs" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Accessibility".to_s, :count => 2
  end
end
