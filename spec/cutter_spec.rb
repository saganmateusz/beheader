describe Beheader::Cutter do

  it 'properly initializes with integer parameter' do
    expect(Beheader::Cutter.new('https://google.com').url).to eql 'https://google.com'
  end

  it 'properly keeps domain' do
    
  end

  it 'properly discards domain' do
  end


end
