class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :description, :amount, :payment_date, :paid, :recurring, :user_id
end
