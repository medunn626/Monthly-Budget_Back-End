curl --include --request PATCH "http://localhost:4741/expenses/${ID}" \
--header "Authorization: Token token=${TOKEN}" \
--header "Content-Type: application/json" \
--data '{
  "expense": {
    "description": "'"${DESCRIPTION}"'",
    "amount": "'"${AMOUNT}"'",
    "payment_date": "'"${DATE}"'",
    "paid": "'"${PAID}"'",
    "recurring": "'"${RECURRING}"'"
  }
}'
