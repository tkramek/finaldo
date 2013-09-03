class CreateRights < ActiveRecord::Migration
  def change
    create_table :rights do |t|
      t.integer :numberOfportfolios
      t.integer :numberOfinstruments
      t.integer :user_id
      t.timestamps
    end
  end
end