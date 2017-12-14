class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :description, :amount, :payment_date, :paid, :user_id
end
