require 'spec_helper'

describe User do
  it { should validate_presence_of :user_name }
  it { should validate_presence_of :password_digest }
  it { should have_many :questions }
  it { should have_many :answers }
end
