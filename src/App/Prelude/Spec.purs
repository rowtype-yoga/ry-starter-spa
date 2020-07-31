module App.Prelude.Spec
  ( module App.Prelude.Default
  , module Effect.Aff
  , module React.TestingLibrary
  , module Test.Spec
  , module Test.Spec.Assertions.DOM
  , module React.Basic
  ) where

import App.Prelude.Default

import Effect.Aff (Aff)
import React.Basic (ReactComponent)
import React.TestingLibrary (class TextMatch, FakeKeyboardEvent, RenderQueries, cleanup, defaultKeyboardEvent, describeComponent, findByText, fireEvent, fireEventAbort, fireEventAnimationEnd, fireEventAnimationIteration, fireEventAnimationStart, fireEventBlur, fireEventCanPlay, fireEventCanPlayThrough, fireEventChange, fireEventClick, fireEventCompositionEnd, fireEventCompositionStart, fireEventCompositionUpdate, fireEventContextMenu, fireEventCopy, fireEventCut, fireEventDblClick, fireEventDoubleClick, fireEventDrag, fireEventDragEnd, fireEventDragEnter, fireEventDragExit, fireEventDragLeave, fireEventDragOver, fireEventDragStart, fireEventDrop, fireEventDurationChange, fireEventEmptied, fireEventEncrypted, fireEventEnded, fireEventError, fireEventFocus, fireEventFocusIn, fireEventFocusOut, fireEventInput, fireEventInvalid, fireEventKeyDown, fireEventKeyPress, fireEventKeyUp, fireEventLoad, fireEventLoadStart, fireEventLoadedData, fireEventLoadedMetadata, fireEventMouseDown, fireEventMouseEnter, fireEventMouseLeave, fireEventMouseMove, fireEventMouseOut, fireEventMouseOver, fireEventMouseUp, fireEventPaste, fireEventPause, fireEventPlay, fireEventPlaying, fireEventPointerCancel, fireEventPointerDown, fireEventPointerMove, fireEventPointerOut, fireEventPointerOver, fireEventPointerUp, fireEventProgress, fireEventRateChange, fireEventScroll, fireEventSeeked, fireEventSeeking, fireEventSelect, fireEventStalled, fireEventSubmit, fireEventSuspend, fireEventTimeUpdate, fireEventTouchCancel, fireEventTouchEnd, fireEventTouchMove, fireEventTouchStart, fireEventTransitionEnd, fireEventVolumeChange, fireEventWaiting, fireEventWheel, render, renderComponent, typeText)
import Test.Spec (class Example, class FocusWarning, ActionWith, ComputationType(..), Item(..), Spec, SpecT(..), SpecTree, Tree(..), after, afterAll, afterAll_, after_, around, aroundWith, around_, before, beforeAll, beforeAll_, beforeWith, before_, collect, describe, describeOnly, evaluateExample, focus, hoistSpec, it, itOnly, mapSpecTree, parallel, pending, pending', sequential)
import Test.Spec.Assertions.DOM (textContentShouldEqual, valueShouldEqual)
