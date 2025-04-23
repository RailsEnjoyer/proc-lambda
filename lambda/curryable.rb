def curryable(proc)
  ->(n) do
    ->(x) do
      proc.call(x, n)
    end
  end
end


any_lambda = ->(x, n) { x ** n }

p curryable(any_lambda).call(3).call(2)