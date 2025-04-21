words = %w[ruby rails procs]

def to_up(arr, &block)
  arr.map(&block)
end

block = Proc.new { |s| puts s.upcase }

to_up(words, &block)