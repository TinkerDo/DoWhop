# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Event.delete_all
Attendance.delete_all

user = User.create(first_name: 'danny', last_name: 'pham', email: 'do@whop.com', password: 'password')
host = User.create(first_name: 'rae', last_name: 'lietzau', email: 'rae.lietzau@dowhop.com', password: 'password')

event1 = Event.create(name: 'surfing', cost: '$100', description: 'you surf and turf and etc.', location: 'pb', host_id: host.id)
event2 = Event.create(name: 'painting', cost: '$50', description: 'take a paintbrush dip in paint and brush', location: 'downtown', host_id: host.id)
event3 = Event.create(name: 'jumproping', cost: '$1', description: 'take a rope and jump over it', location: 'north park', host_id: host.id)
event4 = Event.create(name: 'programming', cost: '$30', description: 'learn to code in languages', location: 'south park', host_id: host.id)

Attendance.create(attendee_id: user.id, event_id: event1.id)
Attendance.create(attendee_id: user.id, event_id: event2.id)
Attendance.create(attendee_id: user.id, event_id: event3.id)
Attendance.create(attendee_id: user.id, event_id: event4.id)
