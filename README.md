Point
=====

### 2D Point Type in Elm


##### A Point is just a record with x and y fields

Create a Point

    p : Point
    p = { x = 1 , y = 2 }
    
##### You can perform operations on points

Add two Points

    a = { x = 1, y = 2 }
    b = { x = 3, y = 9 }
    c = a <+> b  
    
Subtract two Points

    d = a <-> b
    
Multiply two Points (note, this is element-wise multiplication)

    e = a <*> b
    -- (<*>) : Point -> Point -> Point
    
Dot Multiply two Points

    f = a <.> b
    -- (<.>) : Point -> Point -> number
    
Find the distance between two points

    g = distance a b
    
Find the Manhattan distance between two points

    h = manhattanDistance a b

    


