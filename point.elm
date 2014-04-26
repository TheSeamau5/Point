-- Point type to represent a 2D point / vector
type Point = {x : Float, y : Float}

origin : Point
origin = { x = 0 , y = 0 }

xUnit : Point 
xUnit = { x = 1, y = 0 }

yUnit : Point
yUnit = { x = 0, y = 1 }

-- Vector Addition
(<+>) : Point -> Point -> Point
v <+> w = { x = v.x + w.x , y = v.y + w.y }

-- Vector Subtraction
(<->) : Point -> Point -> Point
v <-> w = { x = v.x - w.x , y = v.y - w.y }

-- Vector Multiplication
(<*>) : Point -> Point -> Point
v <*> w = { x = v.x * w.x , y = v.y * w.y }

-- Vector Division
(</>) : Point -> Point -> Point
v </> w = { x = v.x / w.x , y = v.y / w.y }

-- Dot Multiplication
(<.>) : Point -> Point -> number
v <.> w = v.x * w.x + v.y * w.y

-- p-norm of a Point
norm : number -> Point -> number
norm n v = ((v.x ^ n) + (v.y ^ n)) ^ (1 / n)

-- manhattan / taxicab norm
manhattanNorm : Point -> number
manhattanNorm v = abs(v.x) + abs(v.y)

-- length / magnitude of a vector
length : Point -> number
length = norm 2

-- scalar multiplication
scaleBy : number -> Point -> Point
scaleBy n v = { x = v.x * n , y = v.y * n }

-- distance between two points
distance : Point -> Point -> number
distance p q = length (p <-> q)

-- manhattan / taxicab distance between two points
manhattanDistance : Point -> Point -> number
manhattanDistance p q = manhattanNorm (p <-> q)







-- TEST CODE


a = { x = 1 , y = 2 }

b = { x = 3 , y = 1 }


main = asText (a <+> b)