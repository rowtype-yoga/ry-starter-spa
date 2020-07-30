![Continuous Integration](https://github.com/rowtype-yoga/ry-starter-spa/workflows/Continuous%20Integration/badge.svg)

# `( 🧘🏿‍♀️ ⸬ 🧘🏽‍♂️ | 🧘🏻 )` Single-Page-Application Starter

# 🎒 Preparations

Any real adventurer prepares their trip. For this trip you need to equip your computer with the following supplies:
 - [NodeJS](https://nodejs.org/en/download/)
 - Yarn:
   ```sh
   npm install -g yarn
   ```

# 🖥 Developing
We recommend using Storybook during development but you can also locally start the application.

## 📗 Using Storybook
A very nice workflow for building frontends is to use [Storybook](https://storybook.js.org/). You write stories for your components and immediately see them in action. This frees you from having to click through your UI to finally find your component. It also frees you from having to simulate error states; you just write a story for that.

To run storybook run:

```sh
yarn storybook
```

## 🏃🏽‍♀️ Running the whole application
To see the project in your browser run:

```sh
yarn start
```

# 🧪 Testing
To run the tests issue this command

```sh
yarn test
```

# 🛠 Building
If you would like to create an HTML and a JavaScript file on your computer, this is how:

## 🎒Preparations
You need to equip your computer with [Zephyr](https://github.com/coot/zephyr/releases). If you have trouble with this, please open an issue on this Github Repository and we will help you!

## 📦 Bundling
To create a bundle that is essentially an `index.html` and an `index.js` file run the following command:

```sh
yarn bundle
```

# 👟 Running
To run the bundle open the file `./dist/index.html` in your favourite browser.
