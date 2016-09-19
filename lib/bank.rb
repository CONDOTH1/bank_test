class Bank

  def menu
    puts "Press 1 to Lodge Funds"
    response = gets.chomp
    directory(response)
  end

  def directory(response)
    if response == 1
      'Lodge Funds'
    end
  end

  

end
