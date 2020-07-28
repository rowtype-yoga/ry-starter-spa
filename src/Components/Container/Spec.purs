module Components.Container.Spec where

import Prelude.Spec
import Components.Container as Container

spec ∷ Spec Unit
spec =
  after_ cleanup do
    describe "The container" do
      it "renders without errors" do
        { findByText } <- renderComponent Container.component {}
        elem <- findByText "Rowtype"
        elem `textContentShouldEqual` "RowtypeYoga"