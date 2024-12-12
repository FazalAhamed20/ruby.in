module SavingsAccount
  def self.interest_rate(balance)
    if balance < 1000 && balance >= 0
      0.5
    elsif balance >=1000 && balance  < 5000
      1.621
    elsif balance >=5000
      2.475
    else
      3.213
    end
  end

  def self.annual_balance_update(balance)
 balance * (1 + interest_rate(balance) / 100.0)
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0
    balance = current_balance

    while balance < desired_balance
      balance = annual_balance_update(balance)
      years += 1
    end

    years
  end
end



p SavingsAccount.years_before_desired_balance(2_345.67, 12_345.678_9)