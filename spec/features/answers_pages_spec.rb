require 'spec_helper'

describe Answer do
  context 'creating' do
    it 'lets the user create a new answer' do
      visit root_path
      question = FactoryGirl.build :question
      visit question_path(question.id)
      fill_in 'Answer', with: "Green"
      click_button 'Create Answer'
      page.should have_content "Green"
    end
  end
end
