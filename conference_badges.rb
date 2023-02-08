# Write your code here.

def badge_maker (name)
    "Hello, my name is #{name}."
end

def batch_badge_creator (list)
    list.map do |name|
         badge_maker(name)
    end
end

def assign_rooms speakers
    room =1
    speakers.map do |speaker|
        message = "Hello, #{speaker}! You'll be assigned to room #{room}!"
        room += 1
        message
    end
end

def printer(speakers)
    badges = batch_badge_creator(speakers)
    room_assignments = assign_rooms(speakers)

    badges.each do |badge|
        puts badge
    end
    # puts ""
    room_assignments.each do |assignment|
      puts assignment
    end
    #output.join('\n')
end

