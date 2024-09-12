bind :: Maybe a -> (a -> Maybe a) -> Maybe b
bind Nothing _ = Nothing
bind (Just val) func = func val
