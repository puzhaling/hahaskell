import qualified Data.Map as Map

type LatLong = (Double, Double)

locationDB :: Map.Map String LatLong
locationDB = Map.fromList [("Arkham", (42.6, -70.7))
                          ,("Insmut", (42.8, -70.8))
                          ,("Karcoza", (29.9, -90.7))
                          ,("New-York", (40.7, -73.9))]

toRadians :: Double -> Double
toRadians degrees = degrees * pi / 180

latLongToRads :: LatLong -> (Double,Double)
latLongToRads (lat,long) = (rlat, rlong)
  where rlat = toRadians lat
        rlong = toRadians long

haversine :: LatLong -> LatLong -> Double
haversine coords1 coords2 = earthRadius * c
  where (rlat1,rlong1) = latLongToRads coords1
        (rlat2,rlong2) = latLongToRads coords2
        dlat = rlat2 - rlat1
        dlong = rlong2 - rlong1
        a = (sin (dlat/2))^2 + cos rlat1 * cos rlat2
                                         * (sin (dlong/2))^2
        c = 2 * atan2 (sqrt a) (sqrt (1-a))
        earthRadius = 6378.1


printDistance :: Maybe Double -> IO ()
printDistance Nothing =
  putStrLn "Error, non-existed city"
printDistance (Just dist) = putStrLn (show dist ++ " km")

main :: IO ()
main = do
  putStrLn "Enter 1'st city name:"
  startingInput <- getLine
  let startingCity = Map.lookup startingInput locationDB
  putStrLn "Enter 2'nd city name:"
  destInput <- getLine
  let destCity = Map.lookup destInput locationDB
  let distance = haversine <$> startingCity <*> destCity
  printDistance distance
