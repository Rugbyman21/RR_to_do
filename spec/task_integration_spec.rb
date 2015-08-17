# require('capybara/rspec')
# require('./app')
# require('launchy')
#
# Capybara.app = Sinatra::Application
# set(:show_exceptions, false)
#
# # include Capybara::DSL
#
# describe('path for creating and adding to a To Do List', {:type => :feature}) do
#   it('processes user input and creates list') do
#   visit('/')
#   fill_in('description', :with => "scrub the zebra")
#   click_button('Add task')
#   expect(page).to have_content("The task has been successfully submitted!")
#   end
# end
