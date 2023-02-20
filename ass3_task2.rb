class SavingsAccount
    def interest_rate(amount)
        if amount > 0 && amount < 1000
            puts "Rate of interest: 0.5%"
            @@rate_of_interest = 0.5
        elsif amount >= 1000 && amount < 5000
            puts "Rate of interest: 1.621%"
             @@rate_of_interest = 1.621
        elsif amount >= 5000
            puts "Rate of interest: 2.475%"
             @@rate_of_interest = 2.475
        elsif amount < 0 
            puts "Rate of interest: 3.213%"
             @@rate_of_interest = 3.213
        end
    end
    
    def annual_balance_update(amount)
        updated_balance = amount + ( (amount * @@rate_of_interest) / 100 )
        puts "Current Balance: #{amount}"
        puts "Updated Balance: #{updated_balance} "
    end
    
    
    def years_before_desired_balance(amount, desired_balance)
        if amount < 0 
            puts "Negative Balance !!!"
        elsif amount > 0
          rate_of_interest_amount =  (amount * @@rate_of_interest) / 100 
            for i in 1..100
                amount += rate_of_interest_amount
                    if amount == desired_balance
                    puts "After #{i} years you will get your desired Balance"
            end
        end
        end
    end
end


user1 = SavingsAccount.new 
user1.interest_rate(1500)
user1.annual_balance_update(1500)
user1.years_before_desired_balance(1500, 750)
