class CreatePortfolioValueHistories < ActiveRecord::Migration
  def change
    create_table :portfolio_value_histories do |t|

      t.timestamps
    end
  end
end
