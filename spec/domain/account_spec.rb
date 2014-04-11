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
end
