require 'spec_helper'

describe "Dashboard" do

    it "should have the context SmartLink" do
      # get dashboards_path
      visit root_path
      expect(page).to have_content("SmartLink")
    end

end
