require 'rails_helper'

RSpec.describe Post, type: :model do
  subject { Post.new(title: 'Javascript', text: 'porgramming language', comments_counter: 10, likes_counter: 10) }
  before { subject.save }

  it 'The title should be present' do
    subject.title.nil?
    expect(subject).to_not be_valid
  end

  it 'The title length should not be exceed more than 250 characters' do
    subject.title = 'J' * 280
    expect(subject).to_not be_valid
  end
end
