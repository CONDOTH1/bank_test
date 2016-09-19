require 'account'

describe Account do
  subject(:account) {described_class.new}
  it { is_expected.to respond_to :lodge_funds}
  it { is_expected.to respond_to :withdraw_funds}
  it { is_expected.to respond_to :statement}
  date = Time.now.strftime('%d/%m/%Y')

  describe '#initialise' do
    context 'sets up account upon creation' do
      it 'instantiates an empty account' do
        expect(account.instance_variable_get(:@balance)).to eq(0)
      end

      it 'instantiates an empty transaction' do
        expect(account.instance_variable_get(:@transaction)).to eq([])
      end
    end
  end

  describe '#lodge_funds' do
    context 'allows user to lodge funds' do

      before do
        @transaction = account.instance_variable_get(:@transaction)
      end

      it 'adds specified funds to balance' do
        account.lodge_funds(10)
        expect(account.instance_variable_get(:@balance)).to eq(10)
      end

      it 'saves the transaction date' do
        account.lodge_funds(10)
        expect(@transaction[0][:date]).to eq(date)
      end

      it 'saves the transaction credit' do
        account.lodge_funds(10)
        expect(@transaction[0][:credit]).to eq(10)
      end

      it 'saves the transaction debit' do
        account.lodge_funds(10)
        expect(@transaction[0][:debit]).to eq(0)
      end

      it 'saves the balance at time of transaction' do
        account.lodge_funds(10)
        expect(@transaction[0][:balance]).to eq(10)
      end
    end
  end

  describe '#withdrawal_funds' do
    context 'allows user to withdraw funds' do

      before do
        @transaction = account.instance_variable_get(:@transaction)
        account.withdraw_funds(10)
      end

      it 'adds specified funds to balance' do
        expect(account.instance_variable_get(:@balance)).to eq(-10)
      end

      it 'saves the transaction date' do
        expect(@transaction[0][:date]).to eq(date)
      end

      it 'saves the transaction credit' do
        expect(@transaction[0][:credit]).to eq(0)
      end

      it 'saves the transaction debit' do
        expect(@transaction[0][:debit]).to eq(10)
      end

      it 'saves the balance at time of transaction' do
        expect(@transaction[0][:balance]).to eq(-10)
      end
    end
  end

  describe '#statement' do
    
  end
end
