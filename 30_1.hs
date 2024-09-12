allFmapM :: Monad m => (a -> b) -> m a -> m b
allFmapM func val = val >>= (\val -> return (func val))
