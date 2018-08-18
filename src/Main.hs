module Main where

  import System.IO
  import Models.Fauna
  import Models.Flora
  import Translation.FaunaTranslate
  import Translation.FloraTranslate

  main :: IO ()
  main = do
    putStrLn "What are we looking at? ('q' to exit)"
    lookingAt <- getLine
    -- Separated out the processing of each entity to it's 
    -- own function. This is to reduce the complexity of this
    -- function, and easier to reason about what's actually 
    -- trying to be accomplished.
    if (lookingAt == "Animal") 
      then processAnimal
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
  inputOf :: (Read a, Show a) => String -> [a] -> IO a
  inputOf name options = do
    putStrLn name
    putStrLn $ show options
    hFlush stdout
    selected <- readLn
    return selected

  processAnimal :: IO ()
  processAnimal = do
<<<<<<< HEAD
    theBiome <- inputOf "Biome" [(minBound :: Biome) ..]
    theGender <- inputOf "Gender" [(minBound :: Gender) ..]
    theAge <- inputOf "Age" [(minBound :: FaunaAge) ..]
    theDiet <- inputOf "Diet" [(minBound :: Diet) ..]
    theEcoSystem <- inputOf "EcoSystem" [(minBound :: EcoSystem) ..]
    theTemperment <- inputOf "Temperment" [(minBound :: Temperment) ..]
    let creature = Creature { 
      biome = theBiome
      , gender = theGender
      , faunaAge = theAge
      , diet = theDiet
      , ecoSystem = theEcoSystem
      , temperment =  theTemperment
=======
    -- I don't really like this. I know there must be a better
    -- way to achieve this without explitcitly defining each and
    -- every property cose.
    putStrLn "Biome: "
    putStrLn $ show [(minBound :: Biome) ..]
    theBiome <- getLine
    putStrLn "Gender: "
    putStrLn $ show [(minBound :: Gender) ..]
    theGender <- getLine
    putStrLn "Age: "
    putStrLn $ show [(minBound :: FaunaAge) ..]
    theAge <- getLine
    putStrLn "Diet: "
    putStrLn $ show [(minBound :: Diet) ..]
    theDiet <- getLine
    putStrLn "EcoSystem: "
    putStrLn $ show [(minBound :: EcoSystem) ..]
    theEcoSystem <- getLine
    putStrLn "Temperament: "
    putStrLn $ show [(minBound :: Temperament) ..]
    theTemperament <- getLine
    let creature = Creature { 
      biome = read theBiome
      , gender = read theGender
      , faunaAge = read theAge
      , diet = read theDiet
      , ecoSystem = read theEcoSystem
      , temperament = read theTemperament
>>>>>>> 43ccd14d3fe01facdd7cc8e422c5e39c1ad56983
      }
    putStrLn $ (++) (finalCreature creature) "\n"
    main

  processPlant :: IO ()
  processPlant = do
    theAge <- inputOf "Age" [(minBound :: FloraAge) ..]
    theRoots <- inputOf "Roots" [(minBound :: RootStructure) ..]
    theNutrients <- inputOf "Nutrients" [(minBound :: NutrientSource) ..]
    theNotes <- inputOf "Notes" [(minBound :: Notes) ..]
    let plant = Plant {
      floraAge = theAge
      , rootStructure = theRoots
      , nutrientSource = theNutrients
      , notes = theNotes
    }
    putStrLn $ (++) (finalPlant plant) "\n"
    main

  processUnknown :: IO ()
  processUnknown = do
    putStrLn "Unknown entity name."
    main

  end :: IO ()
  end = do
    putStrLn "exiting..."
