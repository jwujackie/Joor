# This page is define to interact with only the homepage
module Joor_Home


# These are all the necessary elements defined to be interacted with and or that exists on the page

div   :login_button,                      :class => 'login-button'
input :username,                          :id =>'login-name'
input :password,                          :class =>'login-input login-pw center'
input :sign_in_button,                    :class => 'gold-button center sign-in'


#This does the verification you are on the page you expect to be on
expected_element :login_button

def initialize_page
  has_expected_element?

end



end