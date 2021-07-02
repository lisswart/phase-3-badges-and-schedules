def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
    # array_of_badges = []
    # attendees.each do |name|
    #     array_of_badges << badge_maker(name)
    # end
    # array_of_badges

    attendees.collect do |attendee|
        "Hello, my name is #{attendee}."
    end
end

def assign_rooms(attendees)
    # count = 1
    # array_of_assigned_rooms = []
    # array_of_speakers.each do |speaker|
    #     array_of_assigned_rooms << "Hello, #{speaker}! You'll be assigned to room #{count}!"
    #     count += 1
    # end
    # array_of_assigned_rooms

    attendees.map.with_index(1) do |attendee, room_num|
        "Hello, #{attendee}! You'll be assigned to room #{room_num}!"
    end
end

def printer(attendees)
    batch_badge_creator(attendees).each do |badge|
        puts badge    
    end

    assign_rooms(attendees).each do |assignment|
        puts assignment
    end
end