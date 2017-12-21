class ChangeDataTypes < ActiveRecord::Migration[5.1]
  def self.up
    change_column :expenses, :amount, :decimal
    change_column :budgets, :starting_budget, :decimal
    change_column :budgets, :amount_spent, :decimal
    change_column :budgets, :remaining_budget, :decimal
  end
  def self.down
    change_column :expenses, :amount, :integer
    change_column :budgets, :starting_budget, :integer
    change_column :budgets, :amount_spent, :integer
    change_column :budgets, :remaining_budget, :integer
  end
end
