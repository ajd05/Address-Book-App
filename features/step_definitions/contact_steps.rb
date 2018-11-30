Given("I am on the main page") do
  visit root_path
end

When("I click on the {string} link") do |page_name|
  click_link page_name
end

Then("I should be on the {string} page") do |page_name|
  expect(page).to have_content(page_name)
end

When("I click on the {string} button") do |page_name|
  click_link page_name
end

Then("I enter {string} into the {string} text field") do |string, string2|
  if string2.eql?('Name')
      @browser.text_field(:name => 'input_1').set(string)
  end
end

Then("I should see {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end