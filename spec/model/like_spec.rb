require 'rails_helper'

RSpec.describe Like, type: :model do
  describe 'Like Model Test' do
    subject { Like.new(author_id: 5, posts_id: 5) }
    before { subject.save }

    it 'The author_id should be number' do
        subject.author_id = 'aaa'
        expect(subject).to_not be_valid
    end

    it 'The author_id should be integer' do
        id = subject.author_id = 2
        expect(id).to be == 2
    end
  end
end
