require 'spec_helper'

describe "UserPages" do
 subject {page}

 describe "Signup Page" do
 	before {visit signup_path}

 	it {should have_content('Sign Up')}
 	it {should have_title('Sign Up - Help With Friends')}
 end
end
