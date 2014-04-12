describe HeroValidator do
  subject { HeroValidator.new }

  context 'validated hero has no name' do
    it 'rejects this hero' do
      expect { subject.validate(Hero.new level: 70) }.to raise_error(HeroValidator::Failed) do |error|                               error.errors[:name].should include("name not found")      
      end
    end
  end

  context 'validated hero has no level' do
    it 'rejects this hero' do
      expect { subject.validate(Hero.new name: 'Ildefons') }.to raise_error(HeroValidator::Failed) do |error|
        error.errors[:level].should include("level not found")        
      end
    end
  end
end
