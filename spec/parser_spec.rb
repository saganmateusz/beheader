describe Beheader::Parser do
  it 'parses the integer to base 62 correctly' do
    expect(Beheader::Parser.parse_to_base_62(1)).to eq 'b'
    expect(Beheader::Parser.parse_to_base_62(125)).to eq 'cb'
    expect(Beheader::Parser.parse_to_base_62(5555)).to eq 'bBL'
  end

  it 'parses the string url to base 10 correctly' do
    expect(Beheader::Parser.parse_to_base_10('a')).to eq 0
    expect(Beheader::Parser.parse_to_base_10('cb')).to eq 125
    expect(Beheader::Parser.parse_to_base_10('bBL')).to eq 5555
  end

  it 'properly splits url into domain and relative path' do
    expect(Beheader::Parser.strip_domain('https://www.google.com/#q=chunky+bacon')).to eql ['https://www.google.com/', '#q=chunky+bacon']
    expect(Beheader::Parser.strip_domain('https://google.com/#q=chunky+bacon')).to eql ['https://google.com/', '#q=chunky+bacon']
    expect(Beheader::Parser.strip_domain('https://google.com')).to eql ['https://google.com/', '']
    expect(Beheader::Parser.strip_domain('www.google.com/#q=chunky+bacon')).to eql ['http://www.google.com/', '#q=chunky+bacon']
  end
end
