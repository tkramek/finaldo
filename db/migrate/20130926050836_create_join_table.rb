class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :products, :categories, table_name: :categorization
  end
end
