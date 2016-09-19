require 'account'

describe Account do
  subject(:account) {described_class.new}
  it { is_expected.to respond_to :lodge_funds}

  describe '#initialise' do
    context 'sets up account upon creation' do
      it 'instantiates an empty account' do
        expect(account.instance_variable_get(:@balance)).to eq(0)
      end
    end
  end
end
