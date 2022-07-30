require 'rails_helper'

RSpec.describe 'Recipe', type: :model do
  subject do
    Recipe.new(name: 'Wahala', preparation_time: 10, cooking_time: 30, description: 'Pizza is delicious', user_id: 1)
  end
  before { subject.save }

  it 'name should not be empty' do
    user = User.new(id: 1, name: 'Fed')
    subject.user_id = user.id
    subject.public = false
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'preparation_time should not be empty' do
    user = User.new(id: 1, name: 'Fed')
    subject.user_id = user.id
    subject.public = false
    subject.preparation_time = nil
    expect(subject).to_not be_valid
  end

  it 'cooking_time should not be empty' do
    user = User.new(id: 1, name: 'Fed')
    subject.user_id = user.id
    subject.public = false
    subject.cooking_time = nil
    expect(subject).to_not be_valid
  end

  it 'description should not be empty' do
    user = User.new(id: 1, name: 'Fed')
    subject.user_id = user.id
    subject.public = false
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it 'description should not be empty' do
    subject.public = false
    subject.user_id = nil
    expect(subject).to_not be_valid
  end
end
