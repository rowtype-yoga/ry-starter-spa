import logo from './logo.svg';
import { create } from '@storybook/theming/create';

const pink = '#c55397'
const green = '#0f552b'

export default create({
  base: 'dark',

  colorSecondary: pink,
  colorPrimary: green,

  // UI
  appBg: '#10354a',
  appContentBg: '#203f50',
  appBorderColor: '#002334',
  appBorderRadius: 20,

  // Typography
  fontBase: '-apple-system, system-ui, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Ubuntu, Arial, sans-serif',
  fontCode: '"VictorMono", monospace',

  // Text colors
  textColor: 'white',
  
  textInverseColor: 'rgba(255,255,255,0.9)',

  brandTitle: 'Rowtype Yoga',
  brandUrl: 'https://rowtype.yoga',
  brandImage: logo,
});
