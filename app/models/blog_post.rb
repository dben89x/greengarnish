class BlogPost < ActiveRecord::Base
  attr_accessible :title,:body,:author,:description
  # before_create :create_slug

  # def to_param
  #   slug
  # end
  #
  # def create_slug
  #   self.slug = self.title.parameterize
  # end

end
