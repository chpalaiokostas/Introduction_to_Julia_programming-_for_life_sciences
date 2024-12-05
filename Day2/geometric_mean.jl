module GeometricMean

export geom_mean

function geom_mean(x::Vector)
    x_product = 1
    for i in x
        x_product *= i
    end
    return x_product^(1/length(x))
end

end # GeometricMean