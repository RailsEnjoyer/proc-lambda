def compose(l1, l2)
  l3 = -> (x) { l2.call(l1.call(x)) }
end

f = ->(x){ x + 1 } 
g = ->(x){ x * 2 }

h = compose(f, g)
p h.call(3)