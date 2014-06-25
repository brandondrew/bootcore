require 'rails_helper'

RSpec.describe "cloud_configs/edit", :type => :view do
  before(:each) do
    @cloud_config = assign(:cloud_config, CloudConfig.create!(
      :user => nil,
      :accessibility => "MyString"
    ))
  end

  it "renders the edit cloud_config form" do
    render

    assert_select "form[action=?][method=?]", cloud_config_path(@cloud_config), "post" do

      assert_select "input#cloud_config_user_id[name=?]", "cloud_config[user_id]"

      assert_select "input#cloud_config_accessibility[name=?]", "cloud_config[accessibility]"
    end
  end
end
