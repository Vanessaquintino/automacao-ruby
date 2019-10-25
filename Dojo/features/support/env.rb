require 'rspec'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'page-object'
require 'data_magic'
require 'pry'

#World(PageObject::PageFactory)

#CONFIGURANDO O DRIVER CAPYBARA
Capybara.register_driver :selenium do |app|
 Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

#SETANDO A CONFIGURAÇÃO DO  DRIVER COMO PADRÃO
Capybara.default_driver = :selenium

#TIMEOUT PADRÃO NA EXECUÇÃO
Capybara.default_max_wait_time = 15

#MAXIMIZER A TELA AO INICIAR O TESTE
Capybara.page.driver.browser.manage.window.maximize

