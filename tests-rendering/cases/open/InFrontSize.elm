module InFrontSize exposing (main)

import Testable.Element exposing (..)
import Testable.Element.Background as Background
import Testable.Element.Border as Border


main =
    layout []
        (el
            [ width (px 100)
            , height (px 100)
            , centerX
            , centerY
            , Background.color (rgb 0.1 0.1 0.1)
            , Border.width 20
            , Border.color (rgb 0.5 1 1)

            -- the following element should cover the parent's border
            , inFront
                (el
                    [ width fill
                    , height fill
                    , Background.color (rgb 0.1 0.5 0.9)

                    -- , moveUp 40
                    ]
                    none
                )
            ]
            none
        )
