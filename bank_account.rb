# bank_account.rb
class BankAccount


@@minimum_balance = 200

  attr_reader :name
  attr_accessor :balance

  def initialize(balance, name)
    # raise (ArgumentError) unless (@@minimum_balance <= @balance)
    @balance = balance
    @name = name
    @minimum_balance = @@minimum_balance

    raise ArgumentError if (@minimum_balance > @balance)

  end


  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def transfer(amount, other_account)
    @balance -= amount
    other_account.balance += amount
  end

  def self.minimum_balance
    @@minimum_balance
  end

  # def self.min_balance
  #   @balance == @@minimum_balance
  # end

private

  def self.minimum_balance=(new_min_balance)
    @@minimum_balance = new_min_balance
  end


end

# leah = BankAccount.new(500, "Loeffler")
#
# joe = BankAccount.new(250, "pollis")


# p BankAccount.minimum_balance
# BankAccount.minimum_balance=(250)


# leah.transfer(250, joe)

# p joe
#
# BankAccount.minimum_balance=(250)
#
# p BankAccount.minimum_balance
# j = BankAccount.new(11, "Joe")
#
# p j
#
# BankAccount.minimum_balance=(100)
