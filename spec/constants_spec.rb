describe Beheader::Constants do
  let(:urL_characters) { Beheader::Constants::URL_CHARACTERS }

  it 'contains lowercase literals in url characters' do
    ('a'..'z').each do |lowercase|
      expect(:urL_characters).to include(lowercase)
    end
  end

  it 'contains uppercase literals in url characters' do
    ('A'..'Z').each do |uppercase|
      expect(:urL_characters).to include(uppercase)
    end
  end

  it 'contains numbers in url characters' do
    (0..9).each do |numeral|
      expect(:urL_characters).to include(numeral)
    end
  end
end