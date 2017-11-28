require 'rails_helper'

RSpec.feature 'user can create posts' do
  scenario 'creates a post' do
    visit '/'
    click_link 'New Post'
    attach_file('Image', 'spec/files/images/coffee.jpg')
    fill_in 'Caption', with: 'yum yum yum #coffeetime'
    click_button 'Create Post'

    expect(page).to have_content('#coffeetime')
    expect(page).to have_css("img[src*='coffee.jpg']")
  end
end
