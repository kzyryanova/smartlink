require 'rails_helper'

describe "Dashboard" do

    it "should have the context SmartLink" do
      visit root_path
      expect(page).to have_content("SmartLink")
      expect(page).to have_selector('input#shorten_url')
    end

end
