require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'Comment Model Test' do
    subject { Comment.new(text: 'Good Job', author_id: 2, posts_id: 2) }
    before { subject.save }

    it 'The comment should not be blank' do
      subject.text.nil?
      expect(subject).to_not be_valid
    end

    it 'The author_id should be number' do
        subject.author_id = 'aaa'
        expect(subject).to_not be_valid
    end
  end
end
