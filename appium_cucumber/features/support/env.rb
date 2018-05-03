require 'pry'
require 'cucumber'
require 'appium_lib'
require_relative '../../lib/budget_app'

def opts
  {
    caps: {
      platformName: "Android",
      deviceName: "emulator-5554",
      app: "/Users/tech-a10/Downloads/budgetwatch.apk"
    }
  }
end

Appium::Driver.new(opts, true)

World(BudgetApp)