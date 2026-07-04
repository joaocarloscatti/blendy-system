import type { Config } from 'tailwindcss'
const config: Config = {
  content: ['./app/**/*.{js,ts,jsx,tsx}', './components/**/*.{js,ts,jsx,tsx}'],
  theme: { extend: { colors: { blendyPink:'#ff2f91', blendyGold:'#ffc857', blendyBlack:'#111111' } } },
  plugins: [],
}
export default config
