Given("I am in the Add New User Page") do
  visit "/users/new"
end

When("I enter {string} field") do |name|
  page.fill_in('Name', :with => name)
end

When("I click on the {string} button") do |link|
  click_on (link)
end

Then("I will click on {string} link") do |page|
  click_on (page)
end

When("I'm in the {string} page") do |page_name|
  expect(page).to have_content(page_name)
end

Then("I should see {string} name") do |string|
  expect(page).to have_content(string)
end