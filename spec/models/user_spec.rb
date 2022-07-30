require 'rails_helper'

RSpec.describe 'User', type: :model do
  subject { User.new(name: 'Fed', email: 'faky@mail.ru') }
  before { subject.save }

  it 'email should not be empty' do
    subject.email = nil
    expect(subject).to_not be_valid
  end
end
