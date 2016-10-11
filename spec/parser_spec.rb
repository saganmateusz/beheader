describe Beheader::Parser do
  it 'parses the integer to base 62 correctly' do
    expect(Beheader::Parser.parse_to_base_62(1)).to eq 'b'
    expect(Beheader::Parser.parse_to_base_62(125)).to eq 'cb'
    expect(Beheader::Parser.parse_to_base_62(5555)).to eq 'ayY'
  end

  it 'parses the string url to base 10 correctly' do
    expect(Beheader::Parser.parse_to_base_10('b')).to eq 1
    expect(Beheader::Parser.parse_to_base_10('cb')).to eq 125
    expect(Beheader::Parser.parse_to_base_10('ayY')).to eq 125
  end
end
