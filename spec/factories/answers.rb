# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :answer, :class => 'Answers' do
    content "Turtles are green"
  end
end
