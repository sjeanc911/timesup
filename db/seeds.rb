# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(username: 'jean')

main_goal = Goal.create(title: 'Read all Murakami books', owner_id: user.id, owner_type: 'User', priority: 1)
sub_goals = Goal.create([
                          {title: 'The Elephant Vanishes', owner_id: main_goal.id, owner_type: 'Goal', priority: 1},
                          {title: 'IQ84', owner_id: main_goal.id, owner_type: 'Goal', priority: 2}
                        ])

acc_goals = Goal.create([
                          {title: 'The Wind-Up Bird Chronicle', owner_id: main_goal.id, owner_type: 'Goal', accomplished_at: 1.month.ago, priority: 3},
                          {title: 'Kafka On The Shore', owner_id: main_goal.id, owner_type: 'Goal', accomplished_at: 1.week.ago, priority: 4}
                        ])

arc_goals = Goal.create([
                          {title: 'What I Talk About When I Talk About Running', owner_id: main_goal.id, owner_type: 'Goal', archived_at: 3.weeks.ago, priority: 5},
                          {title: 'After Dark', owner_id: main_goal.id, owner_type: 'Goal', archived_at: 2.weeks.ago}
                        ])



main_goal = Goal.create(title: 'Create TimesUp Dashboard', owner_id: user.id, owner_type: 'User', priority: 2)
sub_goals = Goal.create([
                          {title: 'display seed data', owner_id: main_goal.id, owner_type: 'Goal', priority: 1, accomplished_at: '2016-05-5'},
                          {title: 'display main goal', owner_id: main_goal.id, owner_type: 'Goal', priority: 2}
                        ])

main_goal = Goal.create(title: 'Setup Kapehan Ceferina', owner_id: user.id, owner_type: 'User', priority: 3)
sub_goals = Goal.create([
                          {title: 'select hanging plants', owner_id: main_goal.id, owner_type: 'Goal'},
                          {title: 'table for record player', owner_id: main_goal.id, owner_type: 'Goal'},
                          {title: 'buy stamps', owner_id: main_goal.id, owner_type: 'Goal'},                                            {title: 'more bookshelves', owner_id: main_goal.id, owner_type: 'Goal'}
                        ])
