class Card 
  def initialize(content, &block)
    @content = content 
    instance_eval(&block)
  end

  def title(&block)
    @title = block.call
  end

  def description(&block)
    @description = block.call
  end

  def render 
    <<~OUTPUT
      == #{@content} ==
      Имя: #{@title}
      Описание: #{@description}
    OUTPUT
  end
end

card = Card.new("User Card") do
  title { "Богдан" }
  description { "Ruby-разработчик" }
end

puts card.render
