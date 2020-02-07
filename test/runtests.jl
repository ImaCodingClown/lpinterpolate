using Test
using printerpolate

data=rand(10,2)

for n in 1:10
    @test round(interpolate(data[n,1],data),digits=6) ==round(data[n,2], digits=6)
end
