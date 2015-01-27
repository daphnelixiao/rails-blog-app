require 'spec_helper'
require 'rails_helper'

describe "visit blog" do

  it "takes me to the index page" do
    visit '/'
    expect(page).to have_content "Welcome to your new blog!"
  end
end