
using JuMP

using Pkg
Pkg.add("Ipopt")

using Ipopt

dash = Model(solver = IpoptSolver())

@variable(dash, x1)
@variable(dash, x2)
@variable(dash, x3)
@variable(dash, x4)
@variable(dash, x5)
@variable(dash, x6)
@variable(dash, x7)
@variable(dash, x8)

@objective(dash, Min, 15x1+20x2+15x3+15x4+30x5+15x6+15x7+50x8)

@constraint(dash, 0.24x1+11.48x2+0.58x3+0.3x4+0.1x5+0.48x6+0.16x7+4.1x8<=68)

@constraint(dash, 33.6x1+1.5x2+124.8x3+15x4+8.1x5+3.2x6+2.4x7+73x8<=1500)

@constraint(dash, 3x5+0.29x8<=129)

@constraint(dash, 1.55x2+0.2x3+0.6x5+340x8<=16)

@constraint(dash, 28x1+4.25x2+12.25x3+24x4+250x5+49.6x6+5.6x7+40x8>=1334)

@constraint(dash, 9.6x1+47.75x2+13.25x3+14x4+2.4x5+17.6x6+8x7+43x8>=542)

@constraint(dash, 2.48x1+2.33x2+1.55x3+3x4+2.72x6+0.24x7>=34)

@constraint(dash, 212.8x1+181.75x2+56.5x3+264x4+31x5+262.6x6+87.2x7+397x8>=4721)

@constraint(dash, 20x1+144.5x2+58.5x3+90x4+7x5+72x6+23.2x7+151x8==2000)

@constraint(dash, 4 <= x1 <= 20)

@constraint(dash, 0 <= x2 <= 1)

@constraint(dash, 3 <= x3 <= 8)

@constraint(dash, 4 <= x4 <= 6)

@constraint(dash, 6 <= x5 <= 9)

@constraint(dash, 4 <= x6 <= 8)

@constraint(dash, 4 <= x7 <= 9)

@constraint(dash, 0 <= x8 <= 6)

solve(dash)

println("Min cost: ", getobjectivevalue(dash))

println("x1: ", getvalue(x1))
println("x2: ", getvalue(x2))
println("x3: ", getvalue(x3))
println("x4: ", getvalue(x4))
println("x5: ", getvalue(x5))
println("x6: ", getvalue(x6))
println("x7: ", getvalue(x7))
println("x8: ", getvalue(x8))


