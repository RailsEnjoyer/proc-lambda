def do_twice(&proc_object)
  proc_object.call
  proc_object.call
end

say_hello = Proc.new { puts "Hello, world!" }

do_twice(&say_hello)
