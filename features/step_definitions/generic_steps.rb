When /^I visit "([^"]*)"$/ do |path|
  visit path
end

When /^I dump.* the response$/ do
  puts body
end
