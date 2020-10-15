require 'bigdecimal'
var1 = 4
var2 = BigDecimal("1000.00000000000000000000000000000000001")
print var1 + var2
puts ''

require 'matrix'
mat1 = Matrix[[1,2,3],[4,5,6],[7,8,9]]
mat2 = Matrix[[9,8,7],[6,5,4],[3,2,1]]
print mat1 + mat2
puts ''
mat3 = mat1*mat2
print mat3
puts ''
print mat3.eigensystem.eigenvalues
puts ''
