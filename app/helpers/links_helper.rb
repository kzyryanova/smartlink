module LinksHelper
  def link_disabled?(link)
    return true if link.clicks > 0
  end
end
