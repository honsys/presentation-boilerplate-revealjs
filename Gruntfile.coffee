module.exports = (grunt) ->

  grunt.loadNpmTasks 'grunt-contrib-jshint'
  grunt.loadNpmTasks 'grunt-contrib-watch'


  grunt.initConfig
    sources:
      js:
        app: 'app/**/*.js'


    jshint:
      app: '<%= sources.js.app %>'

    watch:
      options:
        livereload: true
      app:
        files: ['<%= sources.js.app %>']
        tasks: ['jshint:app']
      css:
        files: ['css/**/*.css']
      html:
        files: ['index.html']


  grunt.registerTask 'default', [
    'watch'
  ]
