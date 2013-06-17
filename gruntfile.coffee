module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON "package.json"

    meta:
      file: 'lungo'
      endpoint: "stylesheets",

    source:
      theme: "src/stylesheets/*.styl"

    stylus:
      theme:
        options: compress: true
        files: '<%=meta.endpoint%>/tuktuk.<%=meta.file%>.theme.css': '<%=source.theme%>'

    watch:
      stylus:
        files: ['<%= source.theme %>']
        tasks: ["stylus:theme"]


  grunt.loadNpmTasks "grunt-contrib-stylus"
  grunt.loadNpmTasks "grunt-contrib-watch"

  grunt.registerTask "default", ["stylus"]
