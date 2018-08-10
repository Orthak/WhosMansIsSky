module BioMap.FaunaMap where

    import Models.Fauna

    biomeMap :: Biome -> String
    biomeMap b
        | b == Lush         = "Luh"
        | b == Barren       = "Bren"
        | b == UnknownBiome = "Ukno"
        | b == Airless      = "Arle"
        | b == ExoticBiome  = "Eoti"
        | b == Scorched     = "Sored"
        | b == Frozen       = "Fren"
        | b == Toxic        = "Tic"
        | b == Irradiated   = "Iate"

    genderMap :: Gender -> String
    genderMap g
        | g == Male                 = "Masc"
        | g == Female               = "Femn"
        | g == ExoticGender         = "Exic"
        | g == UnknownGender        = "Unkn"
        | g == IndeterminateGender  = "Idet"
        | g == Asymmetric           = "Amri"
        | g == NonUniform           = "Nofm"
        | g == Symmetric            = "Seti"
        | g == Rational             = "Rial"
        | g == Vectorized           = "Verz"
        | g == Prime                = "Pim"
        | g == Radical              = "Rical"
        | g == Asymptotic           = "Asmp"
        | g == Orthogonal           = "Ognal"
        | g == None                 = "Ne"
    
    ageMap :: FaunaAge -> String
    ageMap a
        | a == Immature         = "Imur"
        | a == Mature           = "Matre"
        | a == IndeterminateAge = "Inmit"
        | a == Constant         = "Cotan"
        | a == Fluctuating      = "Flig"
        | a == Perpetual        = "Preta"

    dietMap :: Diet -> String
    dietMap d
        | d == Carnivore    = "Creor"
        | d == Herbivore    = "Hebve" 
        | d == Omnivore     = "Onore"

    ecoSystemMap :: EcoSystem -> String
    ecoSystemMap e
        | e == Ground   = "Gond"
        | e == Air      = "Ar"
        | e == Water    = "Waer"
        | e == Caves    = "Caes"

    tempermentMap :: Temperment -> String
    tempermentMap t
        | t == Generic          = "Genic"
        | t == Passive          = "Pave"
        | t == Prey             = "Pe"
        | t == PlayerPredator   = "PyePedat"
        | t == Predator         = "Pedat"
