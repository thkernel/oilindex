json.extract! member, :id, :first_name, :last_name, :gender, :phone, :country, :city, :email, :amount_paid, :actions_number, :action_percentage, :remaining_actions, :annual_yield, :current_value, :annual_expected_yield, :turnover, :business_commissions, :selling_price, :status, :user_id, :created_at, :updated_at
json.url member_url(member, format: :json)
