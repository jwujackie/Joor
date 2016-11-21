#This Page defines out the orders page

module Joor_Orders
# These are all the necessary elements defined to be interacted with and or that exists on the page

  div       :top_nav,                           :class => 'nav-masthead'
  span      :messages,                          :class => 'Messages'
  div       :compose,                           :class => 'Compose Mail'
  div       :compose_overlay,                   :calss => 'compose module'
  label     :Select_connections,                :for   => 'Select Connections'
  input     :subject,                           :id    => 'MessageSubject'
  textarea  :message_area,                      :id    => 'MessageBody'
  div       :send,                              :class => 'Send'

#This does the verification you are on the page you expect to be on
  expected_element :top_nav

  def initialize_page
    has_expected_element?

  end



end