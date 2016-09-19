class Bank

  def initialize
    @account = Account.new
  end

  def menu
    puts "Press 1 to Lodge Funds"
    response = gets.chomp
    directory(response)
  end

  def directory(response)
    if response == 1
      lodgement
    end
  end

  def lodgement
    puts "How much would you like to lodge"
    lodgement = gets.chomp
    @account.lodge_funds(lodgement)
  end

end
