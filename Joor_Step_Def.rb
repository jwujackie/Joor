#This connects the feature file to the coding portion

Given (/^That I am on staging.joordev.com$/)do
 #this simultaneously verifies you are on homepage and interacts with it to tell it what to do
  on(Joor_Home).login_button.click


end

When (/^I Sign in as a user$/) do
  #The connection of username, password and sign in button is coming from the functions page where the elements hace been defined
  on(Joor_Home).username.text = 'qatest1'
  on(Joor_Home).password.text = 'qatest1'
   @current_page.sign_in_button_element.click


end
And (/^I Navigate to messages$/) do
  on(Joor_Order).messages_element.click


end
Then (/^I should be able to send a message$/) do
  on(Joor_Orders).compose_element.click
  @current_page.compose_overlay_should_display?
  @current_page.select_connections.select
  @current_page.subject.text = 'test'
  @current_page.message_area.text = 'test'
  @current_page.send_element.click

end


