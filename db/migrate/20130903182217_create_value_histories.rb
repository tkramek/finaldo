class CreateValueHistories < ActiveRecord::Migration
  def change
    create_table :value_histories do |t|

      t.timestamps
    end
  end
end
