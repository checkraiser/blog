# This migration comes from blog (originally 20160221152118)
class CreateBlogArticles < ActiveRecord::Migration
  def change
    create_table :blog_articles do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
