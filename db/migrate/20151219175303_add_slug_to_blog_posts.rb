class AddSlugToBlogPosts < ActiveRecord::Migration
  def change
    add_column :blog_posts, :slug, :string
    add_column :blog_posts, :description, :text
  end
end
