class AddPortfoliosAndInstruments < ActiveRecord::Migration
    create_table :portfolios_instruments, id: false do |t|
      t.belongs_to :portfolio
      t.belongs_to :instrument
    end
end
