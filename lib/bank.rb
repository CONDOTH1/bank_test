class Bank

  def initialize
    @account = Account.new
  end

  def menu
    puts "Press 1 to Lodge Funds"
    puts "Press 2 to Withdraw Funds"
    puts "Press 3 to See Statement"
    response = gets.chomp
    directory(response)
  end

  def directory(response)
    lodgement if response == "1"
    withdrawal if response == "2"
    account_statement if response == "3"
  end

  def lodgement
    puts "How much would you like to lodge"
    amount = gets.chomp
    @account.lodge_funds(amount)
    menu
  end

  def withdrawal
    puts "How much would you like to withdraw"
    amount = gets.chomp
    @account.withdraw_funds(amount)
    menu
  end

  def account_statement
    @account.statement
    menu
  end

end
