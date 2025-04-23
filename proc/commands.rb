def run(commands, command, arg)
  commands[command].call(arg)
end

commands = {
  upcase: Proc.new { |s| s.upcase },
  reverse: Proc.new { |s| s.reverse },
  capitalize: Proc.new { |s| s.capitalize }
}

p run(commands, :upcase, "procs")
p run(commands, :reverse, "hello")    # => "olleh"
p run(commands, :capitalize, "world") # => "World"
