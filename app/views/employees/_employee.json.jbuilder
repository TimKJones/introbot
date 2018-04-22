json.extract! employee, :id, :is_being_onboarded, :what_i_do, :fun_fact, :slack_username, :created_at, :updated_at
json.url employee_url(employee, format: :json)
