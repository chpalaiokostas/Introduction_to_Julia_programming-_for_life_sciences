module R_square

using Statistics

export R² 

function R²(X, y)
    model = X \ y
    fitted = X * model
    residual = y - fitted
    SS_resid = sum(e -> e^2, residual)
    SS_total = sum(v -> (v - mean(y))^2, y)
    return 1 - SS_resid/SS_total
end

end # module