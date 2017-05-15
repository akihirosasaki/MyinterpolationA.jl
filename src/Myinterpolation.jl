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
end
