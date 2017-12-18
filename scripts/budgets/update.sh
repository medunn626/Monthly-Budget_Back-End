curl --include --request PATCH "http://localhost:4741/budgets/${ID}" \
--header "Authorization: Token token=${TOKEN}" \
--header "Content-Type: application/json" \
--data '{
  "budget": {
    "starting_budget": "'"${STARTING}"'",
    "amount_spent": "'"${SPENT}"'",
    "remaining_budget": "'"${REMAINING}"'"
  }
}'
