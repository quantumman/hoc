{-# LANGUAGE KindSignatures, DataKinds #-}

-- | Card List
data Card = FarmVillage
          | DaMaid
          | BurnAgriculture

class Playable (c :: Card) where
    cost :: Play (c :: Card) -> Int

    coin :: Play (c :: Card) -> Int

    cardType :: Play (c :: Card) -> CardType

    subType :: Play (c :: Card) -> SubType

    name :: Play (c :: Card) -> String
    name = const ""

    description :: Play (c :: Card) -> String
    description = const ""
