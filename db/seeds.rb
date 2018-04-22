#Company
company = Company.create(
  name: "Apartment List"
)

#Employees

john = Employee.create({ 
  name: "John Smith",
  company: company,
  is_being_onboarded: false,
  what_i_do: "I'm an engineer on the demand team.",
  fun_fact: "I have 12 fingers",
  slack_username: "John Smith"
})
sally = Employee.create({ 
  name: "Sally Johnson",
  company: company,
  is_being_onboarded: false,
  what_i_do: "I'm an Account Manager",
  fun_fact: "I have 13 cats",
  slack_username: "Sally Johnson"
})
larry = Employee.create({ 
  name: "Larry Newhire",
  company: company,
  is_being_onboarded: true,
  what_i_do: "I'm an engineer on the supply team",
  fun_fact: "I type 400 words per minute",
  slack_username: "Larry Newhire"
})

#Introduction
Introduction.create(
  scheduled_intro_date: Date.new(2018, 5, 15),
  employees: [larry, sally]
)
