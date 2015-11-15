require 'spec_helper'

describe "Dashboards" do
  describe "GET /dashboards" do
    it "should have the context SmartLink" do
      # get dashboards_path
      visit "/dashboard/show"
      expect(page).to have_content("SmartLink")
    end
  end
end
