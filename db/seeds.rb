puts "🌱 Seeding spices..."

# Seed your database here

# Create some users
user1 = User.create(name: 'John Doe', email: 'john@example.com')
user2 = User.create(name: 'Jane Smith', email: 'jane@example.com')

# Create some banks
bank1 = Bank.create(name: 'Bank of America', location: 'New York')
bank2 = Bank.create(name: 'Chase Bank', location: 'California')

# Create some expenses associated with users and banks
Expense.create(amount: 50.0, description: 'Dinner', date: Date.today, user: user1, bank: bank1)
Expense.create(amount: 30.0, description: 'Groceries', date: Date.today, user: user1, bank: bank2)
Expense.create(amount: 20.0, description: 'Coffee', date: Date.today, user: user2, bank: bank1)

puts "✅ Done seeding!"
