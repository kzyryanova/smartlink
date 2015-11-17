require 'rails_helper'

describe "Links" do

    it "should have the context SmartLink" do
      visit root_path
      expect(page).to have_content("SmartLink")
      expect(page).to have_selector('input#link_given_url')
    end

end
