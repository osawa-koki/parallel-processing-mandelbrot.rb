# frozen_string_literal: true

q = Thread::Queue.new
[*1..100].each { |n| q.push(n) }

threads = [*1..5].map do |i|
  Thread.new do
    until q.empty?
      n = q.pop
      puts "square of #{n} is #{n**2} (thread #{i})\n"
    end
  end
end

threads.each(&:join)
