class CreateInstrumentValueHistories < ActiveRecord::Migration
  def change
    create_table :instrument_value_histories do |t|

      t.timestamps
    end
  end
end
