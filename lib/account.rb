class Account

  def initialize
    @balance = 0
  end

  def lodge_funds(lodgement)
    @balance += lodgement
  end

end
