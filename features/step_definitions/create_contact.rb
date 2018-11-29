Given("I am on the home page") do
  visit root_path
end

When("I click on the {string} button") do |page_name|
  click_button page_name
end

Then("I should be on the {string} page") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should see the {string} field") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end