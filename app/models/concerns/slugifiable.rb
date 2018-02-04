module Concerns::Slugifiable

  def slug
    name.downcase.gsub(" ", "-")
  end

  def find_by_slug(slug)
    self.all.detect{|variable| variable.slug == slug}
  end

end
