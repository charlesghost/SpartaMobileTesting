class MainPage 

	BUDGETS_ID = 'protect.budgetwatch:id/menu'
	BUDGET_MENU_ID = 'protect.budgetwatch:id/dateRange'
	ADD_BUDGET = 'protect.budgetwatch:id/action_add'
	BUDGET_NAME_ID = 'protect.budgetwatch:id/budgetNameEdit'
	BUDGET_VALUE_ID = 'protect.budgetwatch:id/valueEdit'
	VIEW_BUDGET_NAME = 'protect.budgetwatch:id/budgetName'
	BUDGET_PAGE = 'protect.budgetwatch:id/helpText'

	def initialize(driver)
      @driver = driver
	end

	def check_homepage_displayed?
      @driver.find_element(:id, BUDGETS_ID)
	end

	def click_on_budgets
      @driver.find_element(:id, BUDGETS_ID).click
	end

	def check_budgets_displayed?
      @driver.find_element(:id, BUDGET_MENU_ID)
	end

	def click_on_add_budget
      @driver.find_element(:id, ADD_BUDGET).click
	end

	def view_budget_name
      @driver.find_element(:id, VIEW_BUDGET_NAME).text
	end

	def view_budget_page
      @driver.find_element(:id, BUDGET_PAGE).text
	end

end 