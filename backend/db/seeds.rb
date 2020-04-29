# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Family.destroy_all
Wallet.destroy_all
Chore.destroy_all
Reward.destroy_all
CreditLine.destroy_all
CreditScore.destroy_all




#families

f1 = Family.create(family_id: 'test123')
f2 = Family.create(family_id: 'test456')


# Users (parents/children)

p1 = User.create(firstname: 'Mitchell', lastname: 'Alton', username: 'parent1', email: 'mitchell.alton@live.com', family_id: f1.id)
p2 = User.create(firstname: 'Leasette', lastname: 'Alton', username: 'parent2', email: 'leasette@test.com', family_id: f2.id)

c1 = User.create(firstname: 'Gracen', lastname: 'Alton', username: 'child1', email: 'gracen@test.com', family_id: f1.id)
c2 = User.create(firstname: 'Airah', lastname: 'Casey', username: 'child2', email: 'airah@test.com', family_id: f2.id)

# Wallets

w1 = Wallet.create(amount: 0, user_id: c1.id)
w2 = Wallet.create(amount: 0, user_id: c2.id)

# Credit Lines

cl1 = CreditLine.create(amount: 500, user_id: c1.id)
cl2 = CreditLine.create(amount: 500, user_id: c2.id)

# Credit Scores

s1 = CreditScore.create(score: 800, user_id: c1.id)
s2 = CreditScore.create(score: 800, user_id: c2.id)

# Rewards

r1 = Reward.create(name: "Sleep Over", description: "Use your credits to have a friend over for a sleep over.", price: 75, user_id: p1.id)
r2 = Reward.create(name: "New Video Game", description: "Use your credits to purchase a new video game. (Approval of game contigent. Discalimer: If not approved you will be refunded for your purchase in full.)", price: 250, user_id: p1.id)
r3 = Reward.create(name: "Dessert", description: "Use your credits to have dessert and you get to choose what is for dessert.", price: 30, user_id: p1.id)
r4 = Reward.create(name: "Outing", description: "Use your credits to got to the zoo, restaurant, or some place of your choice.", price: 150, user_id: p1.id)
r5 = Reward.create(name: "Bonus Screen Time", description: "Use your credits to get more time on video games, watching movies, etc.", price: 25, user_id: p1.id)

r6 = Reward.create(name: "Sleep Over", description: "Use your credits to have a friend over for a sleep over.", price: 75, user_id: p2.id)
r7 = Reward.create(name: "New Video Game", description: "Use your credits to purchase a new video game. (Approval of game contigent. Discalimer: If not approved you will be refunded for your purchase in full.)", price: 250, user_id: p2.id)
r8 = Reward.create(name: "Dessert", description: "Use your credits to have dessert and you get to choose what is for dessert.", price: 30, user_id: p2.id)
r9 = Reward.create(name: "Outing", description: "Use your credits to got to the zoo, restaurant, or some place of your choice.", price: 150, user_id: p2.id)
r10 = Reward.create(name: "Bonus Screen Time", description: "Use your credits to get more time on video games, watching movies, etc.", price: 25, user_id: p2.id)

# Chores

Chore.create(name: "Clean the Kitchen", pay: 20, user_id: p1.id)
Chore.create(name: "Clean the Bathroom", pay: 25, user_id: p1.id)
Chore.create(name: "Sweep the Floors", pay: 15, user_id: p1.id)
Chore.create(name: "Mow the lawn", pay: 30, user_id: p1.id)
Chore.create(name: "Fold laundry", pay: 20, user_id: p1.id)
Chore.create(name: "Vaccum the carpets", pay: 15, user_id: p1.id)
Chore.create(name: "Power wash windows", pay: 100, user_id: p1.id)

Chore.create(name: "Clean the Kitchen", pay: 20, user_id: p2.id)
Chore.create(name: "Clean the Bathroom", pay: 25, user_id: p2.id)
Chore.create(name: "Sweep the Floors", pay: 15, user_id: p2.id)
Chore.create(name: "Mow the lawn", pay: 30, user_id: p2.id)
Chore.create(name: "Fold laundry", pay: 20, user_id: p2.id)
Chore.create(name: "Vaccum the carpets", pay: 15, user_id: p2.id)
Chore.create(name: "Power wash windows", pay: 100, user_id: p2.id)






