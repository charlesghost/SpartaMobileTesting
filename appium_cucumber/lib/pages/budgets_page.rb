class BudgetPage

	BUDGET_NAME_ID = 'protect.budgetwatch:id/budgetNameEdit'
	BUDGET_VALUE_ID = 'protect.budgetwatch:id/valueEdit'
	SAVE_BUDGET_ID = 'protect.budgetwatch:id/action_save'
	

	def initialize(driver)
      @driver = driver
	end

	def fill_in_budget_name(budgetname)
	  @driver.find_element(:id, BUDGET_NAME_ID).send_keys(budgetname)
	end

	def fill_in_budget_value(valuename)
      @driver.find_element(:id, BUDGET_VALUE_ID).send_keys(valuename)
    end

    def save_budget
      @driver.find_element(:id, SAVE_BUDGET_ID).click
	end

end