class CreateInstruments < ActiveRecord::Migration
  def change
    create_table :instruments do |t|
      t.string :name
      t.string :shortname
      t.integer :amount
      t.decimal :value
      t.date :buydate
      t.integer :type

      t.timestamps
    end
  end
end
