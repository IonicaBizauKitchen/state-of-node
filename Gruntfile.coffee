module.exports = (grunt) ->

  grunt.initConfig

    compass:
      public:
        options:
          sassDir: 'src/styles'
          cssDir: 'public/styles'
          outputStyle: 'compact'
          relativeAssets: true
          colorOutput: false

    coffeeify:
      basic:
        src: ['src/scripts/index.coffee']
        dest: "public/scripts/index.js"

    watch:
      coffeeify:
        files: ['src/scripts/index.coffee']
        tasks: ['coffeeify']
      sass:
        files: ['src/styles/*.sass']
        tasks: ['compass']

  grunt.loadNpmTasks 'grunt-coffeeify'
  grunt.loadNpmTasks 'grunt-contrib-compass'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.registerTask 'default', ['watch']