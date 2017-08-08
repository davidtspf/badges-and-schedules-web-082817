def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  badges = []
  counter = 0
  until counter == attendees.length
    badges << badge_maker(attendees[counter])
    counter += 1
  end
  return badges
end

def assign_rooms(attendees)
  room_assignments = []
  attendees.each_with_index do |attendee, room|
    room_assignments << "Hello, #{attendee}! You'll be assigned to room #{room + 1}!"
  end
  return room_assignments
end

def printer(attendees)
  badges = batch_badge_creator(attendees)
  badges.each do |attendee|
    puts attendee
  end

  room_assignments = assign_rooms(attendees)
  room_assignments.each do |attendee|
    puts attendee
  end
end
