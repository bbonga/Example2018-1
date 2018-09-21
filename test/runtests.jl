using Test
using Example2018

# Polynomials form a ring
# 1. addition is associative
# 2. additive identity
# 3. additive inverse
# 4. addition commutes
#HW add stuff

@testset "Properties polynomial additions are all satisfied." begin


	z = Polynomial([0])
	zz = Polynomial([0,0])

	for n in 1:100
		deg = rand(0:100)
		p = Polynomial(rand(-10000000:10000000,deg+1))
		q = Polynomial(rand(-10000000:10000000,deg+1))
		n = Polynomial(rand(-10000000:10000000,deg+1))


		@test p + z == p #Additive identity element
		@test z + p == p #Additive identity element commutes
		@test p + (-p) == z #Additive inverse
		@test p + (q + n) == (p + q) + n #Addition is associative
		@test q + zz == q #Additive identity element of different length
		@test zz + q == q #Additive identity element commutes
		@test n + (-n) == zz #Additive inverse (of different length indentity)
	end
end


1 == 1
@test 2 == 2
