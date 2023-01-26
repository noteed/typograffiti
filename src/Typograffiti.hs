-- |
-- Module:     Typograffiti
-- Copyright:  (c) 2018 Schell Scivally
-- License:    MIT
-- Maintainer: Schell Scivally <schell@takt.com>
--
-- This module provides easy freetype2-based font rendering with a nice
-- Haskell interface.
module Typograffiti(
    TypograffitiError(..),
    allocAtlas, freeAtlas, stringTris, Atlas(..), GlyphMetrics(..),
    makeDrawGlyphs, AllocatedRendering(..), Layout(..),
    SpatialTransform(..), TextTransform(..), move, scale, rotate, color, alpha,
    withFontStore, newFontStore, FontStore(..), Font(..),
    SampleText (..), defaultSample, addSampleFeature, parseSampleFeature, parseSampleFeatures,
        addFontVariant, parseFontVariant, parseFontVariants,
        varItalic, varOptSize, varSlant, varWidth, varWeight,
    RichText (..), str, txt, ($$), style, apply, on, off, alternate,
        alt, case_, centerCJKPunct, capSpace, ctxtSwash, petiteCaps', smallCaps',
        expertJ, finGlyph, fract, fullWidth, hist, hkana, hlig, hojo, halfWidth,
        italic, justifyAlt, jap78, jap83, jap90, jap04, kerning, lBounds, liningFig,
        localized, mathGreek, altAnnotation, nlcKanji, oldFig, ordinals, ornament,
        propAltWidth, petiteCaps, propKana, propFig, propWidth, quarterWidth,
        rBounds, ruby, styleAlt, sciInferior, smallCaps, simpleCJ, subscript,
        superscript, swash, titling, traditionNameJ, tabularFig, traditionCJ,
        thirdWidth, unicase, vAlt, vert, vHalfAlt, vKanaAlt, vKerning, vPropAlt,
        vRotAlt, vrot, slash0, altFrac, ctxtAlt, ctxtLig, optLigs, lig, rand,
    makeDrawTextCached, makeDrawText
) where

import Typograffiti.Atlas
import Typograffiti.Cache
import Typograffiti.Store
import Typograffiti.Text
import Typograffiti.Rich
