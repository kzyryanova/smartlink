class FixLinkColumnName < ActiveRecord::Migration
  def change
    rename_column :links, :shorten_link, :shorten_url
  end
end
