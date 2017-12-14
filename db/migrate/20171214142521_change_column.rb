class ChangeColumn < ActiveRecord::Migration[5.1]
  # def change
  #   change_column :expenses, :payment_date, 'integer USING CAST(payment_date AS integer)'
  # end
  def change
    remove_column :expenses, :payment_date

    add_column :expenses, :payment_date, :integer
  end
end
