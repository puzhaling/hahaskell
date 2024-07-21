binaryPartialApplication binaryFunc x = (\y -> binaryFunc x y)

genDoubleFunc = binaryPartialApplication (\x y -> x*2 + y*2) 2
