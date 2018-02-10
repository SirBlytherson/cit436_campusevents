# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#i   Character.create(name: 'Luke', movie: movies.first)

# 2 Events
e1 = Event.create(name: 'CarnivalBizzarro', start_date: , end_date: 1518220793);
e2 = Event.create(name: 'FestivalSpectacular', start_date: , end_date: 1518220793);

# 4 locations
l1 = Location.create(name: 'Indiana');
l2 = Location.create(name: 'Oregon');
l3 = Location.create(name: 'Utah');
l4 = Location.create(name: 'Wyoming');

# 4 meetings
m1 = Meeting.create(name: 'HoosierFest', start_time: , end_time: 1518220793, location_id: l1);
m2 = Meeting.create(name: 'OregonTrail', start_time: , end_time: 1518220793, location_id: l2);
m3 = Meeting.create(name: 'DesertClimb', start_time: , end_time: 1518220793, location_id: l3);
m4 = Meeting.create(name: 'WyMiRoaming', start_time: , end_time: 1518220793, location_id: l4);

# 2 sponsors
s1 = Sponsor.create(name: 'Rich Uncle');
s2 = Sponsor.create(name: 'Brandon');

# 4 Attendee
a1 = Attendee.create(first_name: 'John', last_name: 'Doe', email: 'jn.doe@gmail.com');
a2 = Attendee.create(first_name: 'Jane', last_name: 'Doe', email: 'ja.doe@gmail.com');
a3 = Attendee.create(first_name: 'Rob', last_name: 'Elliot', email: 'elliot@iupui.edu');
a4 = Attendee.create(first_name: 'Blythe', last_name: 'Brown', email: 'whatsittoya@iupui.edu');
