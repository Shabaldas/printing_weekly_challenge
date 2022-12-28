const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],

  theme: {
    container: {
      padding: '20px',
      center: true,
    },

    extend: {
      fontFamily: {
        sans: ['IBM Plex Mono', ...defaultTheme.fontFamily.sans]
      },

      colors: {
        darkblue: '#2A343E',
        darksecondary: '#6E7579',
        gray: '#B2BDC5',
        cream: '#E7D8C1',
        creamlight: '#EEE7D9',
        gold: '#D6A45C',
      },
    },
  },

  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
  ]
}
