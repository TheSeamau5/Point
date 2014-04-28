Point
=====

### 2D Point Type in Elm


##### A Point is just an extensible record with x and y fields

Create a Point 

    p : Point {}
    p = { x = 1 , y = 2 }
    
##### You can perform operations on points

Add two Points

    a = { x = 1, y = 2 }
    b = { x = 3, y = 9 }
    c = a <+> b  
    -- (<+>) : Point a -> Point b -> Point b
    
Subtract two Points

    d = a <-> b
    
Multiply two Points (note, this is element-wise multiplication)

    f = a <*> b
    -- (<*>) : Point a -> Point b -> Point b
    
Dot Multiply two Points

    g = a <.> b
    -- (<.>) : Point a -> Point b -> number
    
Find the distance between two points

    h = distance a b
    
Find the Manhattan distance between two points

    i = manhattanDistance a b
    
The point type is extensible, as such, methods on Point work on any record with x and y fields of type Float

    j = { x = 1 , y = 2 , foo = "foo" }
    k = { x = 3 , y = 7 , bar = "bar" }
    l = j <+> k 
    -- l is { x = 4 , y = 9 , bar = "bar" }
    -- in most operations, the type of the second argument is preserved
    -- this design choice is for composability
    
    -- consider the following possible function
    moveRight = (<+>) { x = 1 , y = 0 }
    
    -- when moveRight is applied to some record with x and y values, 
    -- the rest of the values in the record are retained
    m = moveRight j 
    -- m is { x = 2 , y = 2 , foo = "foo" }
    
    -- The only downside to this is if the record has a "z" field intended for 3 dimension points
    -- Currently, in Elm, there is no way of handling such polymorphism 
    -- without actually creating new functions for the 3 dimension case
    
    -- Perhaps a solution could be to have points be lists
    -- But then one may not access values by doing .x and .y
