module App.Components.Home.Spec where

import App.Prelude.Spec
import App.Components.Home as Home

spec ∷ Spec Unit
spec =
  after_ cleanup do
    describe "The Home Page" do
      it "renders without errors" do
        { findByText } <- renderComponent Home.component {}
        elem <- findByText "Welcome"
        elem `textContentShouldEqual` "Welcome"
