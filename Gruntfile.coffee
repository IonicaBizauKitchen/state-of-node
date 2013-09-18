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

    markdown2slides:
      basic:
        src: ['src/slides.md']
        dest: "public/slides.html"

    watch:
      markdown2slides:
        files: ['src/*.md']
        tasks: ['markdown2slides']
      coffeeify:
        files: ['src/scripts/*.coffee']
        tasks: ['coffeeify']
      sass:
        files: ['src/styles/*.sass']
        tasks: ['compass']

  grunt.loadNpmTasks 'grunt-coffeeify'
  grunt.loadNpmTasks 'grunt-contrib-compass'
  grunt.loadNpmTasks 'grunt-markdown2slides'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.registerTask 'default', ['watch']