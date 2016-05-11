
def fibo1(n)
  if n == 0
    return 0
  else
    if n == 1
      return 1
    else
      return fibo1(n - 1) + fibo1(n - 2)
    end
  end
end

def fibo2(n)
  if n == 0
    return 0
  else
    if n == 1
      return 1
    else
      penultimo = 0
      ultimo, atual = 1
      (2..n).each do |n|
        atual = penultimo + ultimo
        penultimo = ultimo
        ultimo = atual
      end
      return atual
    end
  end
end

iterations = 40

puts "-----------"
t = Time.now
puts "Resultado: #{fibo1(iterations)}"
puts "Tempo: #{Time.now - t}"
puts "-----------"


puts "-----------"
t = Time.now
puts "Resultado: #{fibo2(iterations)}"
puts "Tempo: #{Time.now - t}"
puts "-----------"
