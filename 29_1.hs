allFmap :: Applicative f => (a -> b) -> f a -> f b
allFmap func a = func <$> a
  -- OR pure (func) <*> a
