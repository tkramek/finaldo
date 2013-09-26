class DropSomeTables < ActiveRecord::Migration
  def change
     drop_table :posts
     drop_table :blog_posts
  end
end
