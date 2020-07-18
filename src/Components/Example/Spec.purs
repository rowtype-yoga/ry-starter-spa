module Components.Example.Spec where

import Prelude.Spec
import Components.Example as Example

spec ∷ Spec Unit
spec =
  after_ cleanup
    $ describe "A simple counter" do
        it "renders without errors" do
          { findByText } <- renderComponent Example.component { initialValue: 0 }
          elem <- findByText "Increment: 0"
          elem `textContentShouldEqual` "Increment: 0"
        it "increments when clicked" do
          { findByText } <- renderComponent Example.component { initialValue: 3 }
          elem <- findByText "Increment: 3"
          elem `textContentShouldEqual` "Increment: 3"
          fireEventClick elem
          elem `textContentShouldEqual` "Increment: 4"
