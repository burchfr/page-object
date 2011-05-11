
require 'page-object/version'

# Module that when included adds core functionality to a page object.
module PageObject
  attr_reader :driver

  # Construct a new page object.  The browser parameter must be either a
  # Watir::Browser or Selenium::WebDriver::Driver.
  def initialize(browser)
    include_platform_driver(browser)
  end
  
  # Gets the entire text of the page
  def text
    driver.text
  end

  private

  def include_platform_driver(browser)
    if browser.is_a? Watir::Browser
      require 'page-object/watir_page_object'
      @driver = PageObject::WatirPageObject.new(browser)
    elsif browser.is_a? Selenium::WebDriver::Driver
      require 'page-object/selenium_page_object'
      @driver = PageObject::SeleniumPageObject.new(browser)
    else
      raise ArgumentError, "expect Watir::Browser or Selenium::WebDriver::Driver"
    end
  end
end