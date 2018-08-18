module Main where

  import System.IO
  import Models.Fauna
  import Models.Flora
  import Models.Entities
  import Translation.FaunaTranslate
  import Translation.FloraTranslate

  main :: IO ()
  main = do
    putStrLn "What are we looking at? ('q' to exit)"
    putStrLn $ show [(minBound :: Entities) ..]
    lookingAt <- getLine
    -- Separated out the processing of each entity to it's 
    -- own function. This is to reduce the complexity of this
    -- function, and easier to reason about what's actually 
    -- trying to be accomplished.
    if (lookingAt == "Animal") 
      --then processAnimal
      then processUnknown
    else if (lookingAt == "Plant")
      then processPlant
    else if (lookingAt == "q")
      then end
    else
      processUnknown

  -- We need to ensure that the type of 'a' is of both
  -- the typeclass of Read and Show. This is so we can 
  -- read the input as the type we want, as well as show
  -- the list of optons that we're passed.
  inputOf :: (String, String) -> IO String
  inputOf (name, options) = do
    putStrLn name
    putStrLn options
    hFlush stdout
    selected <- getLine
    return selected

  animalOptions :: [(String, String)]
  animalOptions = 
    [ ("Biome", show [(minBound :: Biome) ..])
    , ("Gender", show [(minBound :: Gender) ..])
    , ("Age", show [(minBound :: FaunaAge) ..])
    , ("Diet", show [(minBound :: Diet) ..])
    , ("EcoSystem", show [(minBound :: EcoSystem) ..])
    , ("Temperament", show [(minBound :: Temperament) ..])
    ]
  processAnimal :: IO ()
  processAnimal = do
    options <- sequence $ map inputOf animalOptions
    putStrLn $ show options
    let creature = Creature { 
        biome = read $ options !! 0
      , gender = read $ options !! 1
      , faunaAge = read $ options !! 2
      , diet = read $ options !! 3
      , ecoSystem = read $ options !! 4
      , temperament = read $ options !! 5
      }
    putStrLn $ (++) (finalCreature creature) "\n"
    main -- Send execution back to the start. This is so we don't have to constantly restart the console.

  plantOptions :: [(String, String)]
  plantOptions = 
    [ ("Age", show [(minBound :: FloraAge) ..])
    , ("Roots", show [(minBound :: RootStructure) ..])
    , ("Nutrients", show [(minBound :: NutrientSource) ..])
    , ("Notes", show [(minBound :: Notes) ..])
    ]
  processPlant :: IO ()
  processPlant = do
    options <- sequence $ map inputOf plantOptions
    putStrLn $ show options
    let plant = Plant {
        floraAge = read $ options !! 0
      , rootStructure = read $ options !! 1
      , nutrientSource = read $ options !! 2
      , notes = read $ options !! 3
      }
    putStrLn $ (++) (finalPlant plant) "\n"
    main

  processUnknown :: IO ()
  processUnknown = do
    putStrLn "Not yet implemented, or unknown entity."
    main

  end :: IO ()
  end = do
    putStrLn "exiting..."
