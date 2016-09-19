class Account

  def initialize
    @balance = 0
    @transaction = []
  end

  def lodge_funds(lodgement)
    @balance += lodgement.to_i
    @transaction << {date: date, credit: lodgement, debit: 0, balance: @balance}
  end

  def withdraw_funds(withdrawal)
    @balance -= withdrawal.to_i
    @transaction << {date: date, credit: 0, debit: withdrawal, balance: @balance}
  end

  def statement
    int = 0
    puts "date || credit || debit || balance"
    until int == (@transaction.count)
      puts "#{@transaction[int][:date]} || #{@transaction[int][:credit]} || #{@transaction[int][:debit]} || #{@transaction[int][:balance]}"
      int += 1
    end
  end

  private

  def date
    date = Time.now.strftime('%d/%m/%Y')
    date
  end

end
