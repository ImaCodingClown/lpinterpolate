module printerpolate

# Pkg dependencies
using DelimitedFiles, Gadfly

# Includes
include("functions.jl")

# exports
export interpolate
```
    interpolate(x, data): x is a floating number, data must be an array or a file of array of numbers. The function reads first two columns as x and y values.
```
function interpolate(x::Y, data::T) where{Y, T}
    if isa(data, String)
        xs = readdlm(data)[:,1]
        ys = readdlm(data)[:,2]
    elseif isa(data, Array)
        xs = data[:,1]
        ys = data[:,2]
    end
    return lagrangeinterpolation(x,xs,ys)
end


end # module
