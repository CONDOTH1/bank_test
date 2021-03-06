require 'bank'

describe Bank do

  subject(:game) {described_class.new}
  it { is_expected.to respond_to :menu}
  it { is_expected.to respond_to :directory}

  # describe '#directory' do
  #   context 'shows user options' do
  #     it 'allows user to select lodge funds' do
  #       expect(game.directory(1)).to eq('Lodge Funds')
  #     end
  #   end
  # end

  describe '#initialise' do
    context 'sets up bank upon creation' do
      it 'instantiates a new accounts' do
        expect(game.instance_variable_get(:@account)).to be_an_instance_of(Account)
      end
    end
  end



end
