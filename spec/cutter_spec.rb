describe Beheader::Cutter do
  
  context 'validity' do
    it 'properly recognizes valid urls' do
      expect(Beheader::Cutter.new('https://www.google.pl/?gws_rd=ssl').valid_url?).to be_truthy
      expect(Beheader::Cutter.new('http://www.wsj.com/articles/SB10001424052702304746604577379891905861390').valid_url?).to be_truthy
      expect(Beheader::Cutter.new('www.wsj.com/articles/SB10001424052702304746604577379891905861390').valid_url?).to be_truthy
      expect(Beheader::Cutter.new('facebook.com').valid_url?).to be_truthy
    end
  end

end