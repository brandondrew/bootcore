require 'rails_helper'

RSpec.describe "cloud_configs/new", :type => :view do
  before(:each) do
    assign(:cloud_config, CloudConfig.new(
      :user => nil,
      :accessibility => "MyString"
    ))
  end

  it "renders new cloud_config form" do
    render

    assert_select "form[action=?][method=?]", cloud_configs_path, "post" do

      assert_select "input#cloud_config_user_id[name=?]", "cloud_config[user_id]"

      assert_select "input#cloud_config_accessibility[name=?]", "cloud_config[accessibility]"
    end
  end
end
