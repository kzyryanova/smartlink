# == Schema Information
#
# Table name: links
#
#  id          :integer          not null, primary key
#  given_url   :string(255)      not null
#  shorten_url :string(255)
#  clicks      :integer          default(0)
#  title       :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

describe Link, type: :model do
  before do
    @link = Link.new( given_url: "http://google.com",
                      shorten_url: "",
                      clicks: 0,
                      title: "Google"
                      )
  end
  subject { @link }
  it { should respond_to(:given_url) }
  it { should respond_to(:shorten_url) }
  it { should respond_to(:clicks) }
  it { should respond_to(:title) }
  it { should be_valid }

  describe "when given url is not present" do
    before { @link.given_url = " "}
    it { should_not be_valid }
  end
end
