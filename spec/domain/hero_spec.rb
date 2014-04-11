require 'spec_helper'

describe Hero do
  subject { described_class.new name: 'Ildefons', level: 70 }

  describe '#level' do
    it 'returns the current level' do
      subject.level.should eq 70
    end
  end

  describe '#name' do
    it 'returns hero name' do
      subject.name.should eq 'Ildefons' 
    end
  end
end
