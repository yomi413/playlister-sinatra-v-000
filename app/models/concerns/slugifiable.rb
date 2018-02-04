module Concerns::Slugifiable

  def slug
    Artist.name.downcase.gsub(" ", "-")
    Song.name.downcase.gsub(" ", "-")
    Genre.name.downcase.gsub(" ", "-")
  end

  def find_by_slug(slug)
    self.all.detect{|variable| variable.slug == slug}
  end

end
