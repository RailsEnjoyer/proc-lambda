class EventDispatcher
  def initialize
    @listeners = Hash.new { |h, k| h[k] = [] }
  end

  def on(event_name, &block)
    @listeners[event_name] << block
  end

  def emit(event_name, *args)
    @listeners[event_name].each { |listener| listener.call(*args) }
  end
end

ed = EventDispatcher.new
ed.on(:data) { |x| puts "Первый слушатель: #{x}" }
ed.on(:data) { |x| puts "Второй слушатель: #{x * 2}" }
ed.emit(:data, 42)
