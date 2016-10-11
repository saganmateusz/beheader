describe Beheader::Constants do
  let(:url_characters) { Beheader::Constants::URL_CHARACTERS }
  context 'url characters' do
    it 'contains lowercase literals' do
      ('a'..'z').each do |lowercase|
        expect(url_characters).to include(lowercase)
      end
    end

    it 'contains uppercase literals' do
      ('A'..'Z').each do |uppercase|
        expect(url_characters).to include(uppercase)
      end
    end

    it 'contains numbers' do
      ('0'..'9').each do |numeral|
        expect(url_characters).to include(numeral)
      end
    end

    it 'does not contain special characters' do
      expect(url_characters[/[^A-Za-z0-9]+/]).to eq nil
    end

  end

end
