def fibs(n, fibs_array = [])
  n1 = 0
  n2 = 1
  if n == 1
    fibs_array << n1
  else
    fibs_array << n1
    fibs_array << n2

    (n - 2).times do
      fibs_array << (n1 + n2)
      n1 = fibs_array[-2]
      n2 = fibs_array[-1]
    end
  end

  fibs_array
end

def fibs_rec(n, fibs_array = [0, 1])
  return fibs_array if n <= 2
  fibs_array << fibs_array[-1] + fibs_array[-2]
  fibs_rec(n - 1, fibs_array)
end

p fibs(23)
p fibs_rec(23)