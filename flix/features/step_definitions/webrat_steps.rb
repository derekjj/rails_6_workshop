When /^I go to (.*)$/ do |path|
  visit path
end

When /^I press "(.*)"$/ do |button|
  click_button(button)
end

Then /^(?:|I )should see "([^"]*?)"$/ do |content|
  assert page.has_content?(content)
end

Then /^(?:|I )should not see "([^"]*?)"$/ do |content|
  assert page.has_content?(content, count: 0)
end

When /^I follow "(.*)"$/ do |link|
  click_link(link)
end

When /^I fill in "(.*)" with "(.*)"$/ do |field, value|
  fill_in(field, :with => value) 
end

When /^I select "(.*)" from "(.*)"$/ do |value, field|
  select(value, :from => field) 
end

When /^I check "(.*)"$/ do |field|
  check(field) 
end

When /^I uncheck "(.*)"$/ do |field|
  uncheck(field) 
end

When /^I choose "(.*)"$/ do |field|
  choose(field)
end

When /^I submit the form named "(.*)"$/ do |name|
  submit_form(name)
end

When /^I attach the file at "(.*)" to "(.*)" $/ do |path, field|
  attach_file(field, path)
end
