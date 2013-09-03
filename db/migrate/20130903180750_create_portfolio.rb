class CreatePortfolio < ActiveRecord::Migration

  def change
    create_table :portfolio do |t|
      t.decimal :value
      t.string :name
      t.timestamps
    end
  end

end
