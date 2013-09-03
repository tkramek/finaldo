class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.string :name
      t.decimal :value

      t.timestamps
    end
  end
end
