def memoize(proc)
  hash = {}

  Proc.new { |*args| hash[args] ||= proc.call(*args) }
end

slow = Proc.new { |x| sleep(1); x * 2 }
fast = memoize(slow)

p fast.call(3)  # занимает ~1 сек
p fast.call(3)  # возвращает мгновенно
p fast.call(3)  # возвращает мгновенно

p fast.call(4)  # занимает ~1 сек
p fast.call(4)  # возвращает мгновенно
p fast.call(4)  # возвращает мгновенно
