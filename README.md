# MyinterpolationA.jl
Julia code for interpolation

function myinterpolationA(grid, vals)
    function func(x)
        if x <= grid[1]
            return "error"
        elseif x >= grid[length(grid)]
            return "error"
        else
            index_1 = searchsortedfirst(grid, x)
            index_2 = searchsortedlast(grid, x)
        end
        x_1 = grid[index_1]
        x_2 = grid[index_2]
        y_1 = vals[index_1]
        y_2 = vals[index_2]
        
        y = ((y_2- y_1)/(x_2 - x_1))*(x - x_1) + y_1
        return y
    end
    return func
end

grid = [1, 2, 3, 4, 5, 6]
vals = [1000, 500, 200, 300, 100, 200]
f = myinterpolationA(grid, vals)

f(3.5)
