require 'bank'

describe Bank do

  subject(:game) {described_class.new}
  it { is_expected.to respond_to :menu}
  it { is_expected.to respond_to :directory}

  describe '#directory' do
    context 'shows user options' do
      it 'allows user to select lodge funds' do
        expect(game.directory(1)).to eq('Lodge Funds')
      end
    end
  end



end
