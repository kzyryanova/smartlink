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

class Link < ActiveRecord::Base
  hash_id
  validates :given_url, presence: true


  def visited!
    update_attribute(:clicks, clicks + 1)
  end

end

