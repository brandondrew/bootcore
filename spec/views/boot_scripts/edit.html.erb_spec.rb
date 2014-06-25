require 'rails_helper'

RSpec.describe "boot_scripts/edit", :type => :view do
  before(:each) do
    @boot_script = assign(:boot_script, BootScript.create!(
      :file_name => "MyString",
      :body => "MyText",
      :user => nil,
      :accessibility => "MyString"
    ))
  end

  it "renders the edit boot_script form" do
    render

    assert_select "form[action=?][method=?]", boot_script_path(@boot_script), "post" do

      assert_select "input#boot_script_file_name[name=?]", "boot_script[file_name]"

      assert_select "textarea#boot_script_body[name=?]", "boot_script[body]"

      assert_select "input#boot_script_user_id[name=?]", "boot_script[user_id]"

      assert_select "input#boot_script_accessibility[name=?]", "boot_script[accessibility]"
    end
  end
end
