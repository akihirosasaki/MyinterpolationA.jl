function myinterpolationA(grid, vals)
    function func(x)
        if x <= grid[1]
            return "error"
        elseif x >= grid[length(grid)]
            return "error"
        else
            num_1 = searchsortedfirst(grid, x)
            num_2 = searchsortedlast(grid, x)
        end
        x_1 = grid[num_1]
        x_2 = grid[num_2]
        y_1 = vals[num_1]
        y_2 = vals[num_2]
        
        y = ((y_2- y_1)/(x_2 - x_1))*(x - x_1) + y_1
        return y
    end
end
