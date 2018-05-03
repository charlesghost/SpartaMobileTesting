Given("I can open the app") do
  mainpage.check_homepage_displayed?
end

When("click on budget") do
  mainpage.click_on_budgets
end

Then("the budget page opens") do
  expect(mainpage.view_budget_page).to eq "You don't have any budgets at the moment. Click the + (plus) button up top to get started.\n\nBudget Watch lets you create budgets, then track spending during the month."
end

When("I enter a budget") do
  mainpage.click_on_budgets
  mainpage.click_on_add_budget
  budgetpage.fill_in_budget_name('Just a budget')
end

And("save the budget") do
  budgetpage.fill_in_budget_value('100')
end

Then("the budget is saved") do
  budgetpage.save_budget
end

And("can be seen on the homepage") do
  expect(mainpage.view_budget_name).to eq 'Just a budget'
end
