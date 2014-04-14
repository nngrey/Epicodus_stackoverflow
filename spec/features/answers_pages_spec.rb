require 'spec_helper'

describe Answer do
  context 'creating' do
    it 'lets the user create an answer to a question' do
      question = FactoryGirl.create :question
      visit question_path(question)
      fill_in 'Your Answer', with: "Green"
      click_button 'Create Answer'
      page.should have_content "Green"
    end
  end
end
