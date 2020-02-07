function readfile(filename, row::Int64)
    return readdlm(filename)[:,row]
end

function pn(x::Y, xvalues::T, yvalues::T , n::Int64) where {T, Y}
    @assert length(xvalues)==length(yvalues)
    l = length(xvalues)
    denom = 1.0
    numer = 1.0
    for i in 1:l
        if i != n
            denom = denom*(xvalues[n]-xvalues[i])
        end
    end
    for i in 1:l
        if i != n
            numer = numer*(x-xvalues[i])
        end
    end
    return yvalues[n]*numer/denom
end

function lagrangeinterpolation(x::Y, xvalues::T,yvalues::T) where {T,Y}
    @assert length(xvalues)==length(yvalues)
    l = length(xvalues)
    sumpn = 0.0
    for i in 1:l
        sumpn = sumpn + pn(x, xvalues, yvalues, i)
    end
    return sumpn
end

