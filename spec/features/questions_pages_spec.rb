require 'spec_helper'

describe Question do
  context 'creating' do
    it 'lets the user ask a question' do
      visit new_question_path
      fill_in 'Title', with: "Addition question"
      fill_in 'Content', with: "What is 5 + 5"
      click_button 'Create Question'
      page.should have_content "Addition question"
    end

    # it 'lets the user create a new login' do
    #   visit new_user_path
    #   user = FactoryGirl.build :user
    #   fill_in 'Email', with: user.email
    #   fill_in 'Password', with: user.password_digest
    #   fill_in 'Password confirmation', with: user.password_digest
    #   click_button 'Sign Up'
    #   page.should have_content "Photo Album"
    # end
  end
end
