# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryGirl.build(:user) }
  context 'all' do
    it 'is valid with all' do
      expect(user).to be_valid
    end
  end
  context 'name' do
    it 'is not valid when name is empty' do
      user.name = nil
      expect(user).not_to be_valid
    end
    it 'is not valid when name is duplicate' do
      user.save
      expect(FactoryGirl.build(:user)).not_to be_valid
    end
  end
  context 'email' do
    it 'is not valid when email is empty' do
      user.email = nil
      expect(user).not_to be_valid
    end
    it 'is not valid when email is duplicate' do
      user.save
      expect(FactoryGirl.build(:user)).not_to be_valid
    end
    it 'is not valid when email is not email format' do
      user.email = 'a'
      expect(user).not_to be_valid
    end
  end
  context 'password_digest' do
    it 'is not valid when password_digest is empty' do
      user.password_digest = nil
      expect(user).not_to be_valid
    end
  end
  context 'password' do
    it 'is not valid when password equal password_confirmation' do
      user = User.new(name: 'himanoa', email: 'matsunoappy@gmail.com',
                      password: 'a', password_confirmation: 'aa')
      expect(user).not_to be_valid
    end
  end
end
