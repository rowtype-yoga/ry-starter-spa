module App.Components.Container.Spec where

import App.Prelude.Spec
import App.Components.Container as Container
import React.Basic.DOM as R
import React.Basic.Hooks (reactChildrenFromArray)

spec ∷ Spec Unit
spec =
  after_ cleanup do
    describe "The container" do
      it "renders without errors" do
        void $ renderComponent Container.component { children: reactChildrenFromArray [] }
      it "displays its children" do
        let
          children = reactChildrenFromArray [ R.text "Test Text" ]
        { findByText } <- renderComponent Container.component { children }
        elem <- findByText "Test Text"
        elem `textContentShouldEqual` "Test Text"
