describe Beheader::Constants do
  let(:urL_characters) { Beheader::Constants::URL_CHARACTERS }
  context 'url characters' do
    it 'contains lowercase literals'
    it 'contains uppercase literals'
    it 'contains numbers'
  end
  it 'contains lowercase literals' do
    ('a'..'z').each do |lowercase|
      expect(:urL_characters).to include(lowercase)
    end
  end

  it 'contains uppercase literals' do
    ('A'..'Z').each do |uppercase|
      expect(:urL_characters).to include(uppercase)
    end
  end

  it 'contains numbers' do
    (0..9).each do |numeral|
      expect(:urL_characters).to include(numeral)
    end
  end
end
