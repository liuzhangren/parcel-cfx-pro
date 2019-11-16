import dd from 'ddeyes'
import CoffeeScript from 'coffeescript'

export default

  # plugins: [
  #   'coffee'
  #   'jssCoffee'
  #   'felaCoffee'
  # ]

  exts:

    coffee:
      libs: {
        CoffeeScript
      }

  excludes: []

  others:
    action: 'copy'
