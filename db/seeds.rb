5.times do |i|
  Card.create(title: "Card ##{i}")
end

3.times do |i|
  Task.create(title: "Task - #{i}", card_id: 1)
end

2.times do |i|
  Task.create(title: "Another", card_id: i + 2)
end
