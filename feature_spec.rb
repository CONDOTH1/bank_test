# require './lib/bank'
require './lib/account'
#
p account = Account.new
p account.lodge_funds(200)
p account.lodge_funds(100)
p account.withdraw_funds(50)
p account.statement
