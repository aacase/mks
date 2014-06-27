#The person class creates a person and gives them a set amount of cash prior to opening a bank account

class Person
	attr_reader :name #allows us to read the name method throughout the file
	attr_accessor :cash #allows reading and writing of cash throuout the file
	def initialize (name, cash) #gives us our starting value for the person and their cash
		@name=name
		@cash=cash
		puts "Hi there #{name}! You have $ #{cash}"
	end
end

class Bank
	attr_reader :bank_name #allows reading access to the bank name 
	attr_accessor :bank_accounts #allows read and write access to the bank account
	def initialize (bank_name)
		@bank_accounts={} #creates a new hash that will contain the person and their account amount
		@bank_name=bank_name
		puts "You have created #{bank_name}"
	end

	def open_account (user)
		@bank_accounts[user.name]=0 #adds the user to the hash and gives their bank account a conditional amount of $0
		puts "#{bank_name} thanks you for opening an account today, #{user.name}!"
	end

	def deposit (user, amount)
		if amount < user.cash
			@bank_accounts[user.name] += amount
			user.cash -= amount
			puts "#{user.name} deposited $#{amount} to #{@bank_name}. #{user.name} has $#{user.cash}."
		else
			puts "#{user.name} does not have sufficient cash to deposit $#{amount} to #{bank_name}."
		end


	end

	def withdraw (user, amount)
		if amount <= @bank_accounts[user.name] # if the amount the user is withdrawing is less than the amount contained in their account
			@bank_accounts[user.name]-= amount # then subtracts that amount from their bank account
			user.cash += amount #and then add it to their total cash
			puts "#{user.name} withdrew $#{amount} and has a remaining balance of $#{@bank_accounts[user.name]}"
		else
			puts "#{user.name} does not have sufficient funds to withdraw $#{amount}"
		end
	end

	def transfer (user, to_account, amount)
		@bank_accounts[user.name] -= amount
		to_account.bank_accounts[user.name] += amount
		puts "#{user.name} transferred $#{amount} from #{@bank_name} to #{to_account.bank_name}."
		puts "#{user.name} has $#{@bank_accounts[user.name]} remaining in his #{@bank_name} account"
	end

	
 
	def bank_total () #no arguments needed 
		bank_total=0 #bank total stars at zero
		@bank_accounts.each{|user, amount| #loops through accounts in the bank.
		bank_total+=amount} #adds amount from each account to the bank total
		puts "#{@bank_name} has #{bank_total} in the bank."
	end

end


chase = Bank.new("JP Morgan Chase")
wells_fargo = Bank.new("Wells Fargo")
me = Person.new("Shehzan", 500)
friend1 = Person.new("John", 1000)
chase.open_account(me)
chase.open_account(friend1)
wells_fargo.open_account(me)
wells_fargo.open_account(friend1)
chase.bank_total
chase.deposit(me, 10000)
chase.deposit(friend1, 300)
chase.withdraw(me, 60000)
chase.transfer(me, wells_fargo, 100)
chase.bank_total

