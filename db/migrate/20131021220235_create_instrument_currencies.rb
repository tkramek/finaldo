class CreateInstrumentCurrencies < ActiveRecord::Migration
  def change
    create_table :instrument_currencies do |t|
      t.string :name
      t.string :short_name

      t.timestamps
    end
  end
end
