require 'spec_helper'

describe Account do
  subject { described_class.new name: "Test", battle_tag: 1234 }
  
  describe '#name' do
    it 'returns current account name' do
      subject.name.should eq "Test"
    end
  end

  describe "#battle_tag" do
    it "returns current account BattleTag" do
      subject.battle_tag.should eq 1234
    end
  end

  context 'has heroes on account' do
    let(:example_hero) { Hero.new name: 'Ildefons', level: 70 }
    subject { described_class.new name: 'Test', battle_tag: 1234, heroes: [example_hero] }

    describe '#heroes' do
      it 'returns available heroes' do
        subject.heroes.should include(example_hero)
      end
    end
  end

  context 'has no heroes on account' do
    describe '#heroes' do
      it 'return an empty array as heroes' do
        subject.heroes.should be_empty
      end
    end
  end
end
