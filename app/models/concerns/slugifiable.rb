module Slugifiable
  module InstanceMethods
    def slug
      slug = self.username.gsub(" ","-").downcase
    end
  end

  module ClassMethods
    def find_by_slug(slug)
      self.all.find{|t| t.slug == slug}
    end
  end
end
