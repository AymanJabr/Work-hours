# rubocop:disable Metrics/BlockLength
require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Creating a user and associated object' do
    it 'sucessfully creates a new user' do
      user = User.new(id: 1, name: 'username', email: 'username@gmail.com', password: 'password')
      expect(user.valid?).to eq(true)
    end
    it 'fails to create a new user' do
      user = User.new(name: 'Username')
      expect(user.valid?).to eq(false)
    end
    it 'sucessfully creates a new Group from a user' do
      user = User.new(id: 1, name: 'username', email: 'username@gmail.com', password: 'password')
      group = user.groups.build(name: 'Some specific group name', icon: 'this groups icon')
      expect(group.valid?).to eq(true)
    end
    it 'Does not creates a new Group from a user' do
      user = User.new(id: 1, name: 'username', email: 'username@gmail.com', password: 'password')
      group = user.groups.build
      expect(group.valid?).to eq(false)
    end
    it 'sucessfully creates a new Workhour from a user' do
      user = User.new(id: 1, name: 'username', email: 'username@gmail.com', password: 'password')
      workhour = user.workhours.build(name: 'Some specific workhour name', amount: 50.0)
      expect(workhour.valid?).to eq(true)
    end
    it 'Does not creates a new Workhour from a user' do
      user = User.new(id: 1, name: 'username', email: 'username@gmail.com', password: 'password')
      workhour = user.workhours.build
      expect(workhour.valid?).to eq(false)
    end
    it 'sucessfully creates a new Group-Workhour from a Workhour and a Group' do
      user = User.new(id: 1, name: 'username', email: 'username@gmail.com', password: 'password')
      user.save
      group = user.groups.create(name: 'Some specific group name', icon: 'this groups icon')
      workhour = user.workhours.create(name: 'Some specific workhour name', amount: 42.3)
      group_workhour = workhour.group_workhours.create(group_id: group.id)
      expect(group_workhour.valid?).to eq(true)
    end
  end
end
# rubocop:enable Metrics/BlockLength