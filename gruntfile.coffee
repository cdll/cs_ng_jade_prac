module.exports= (grunt)->
    
    grunt.initConfig
        clean:
            build:
                expand: true
                src: ['js', 'views']
        coffee:
            build:
                files:
                    './js/app.js': './src/coffee/*.coffee'
#                expand: true
#                src: 'src/coffee/*.coffee'
#                dest: 'js'
#                ext: '.js'
        jade:
            build:
                files:
                    'views/index.html': 'src/jade/index.jade'
#                expand: true
#                from: 'src/jade/*.jade'
#                to: 'views'
#                ext: '.html'
        watch:
            files: ['src/*/*.*']
            tasks: ['clean', 'coffee', 'jade']

    grunt.loadNpmTasks 'grunt-contrib-coffee'
    grunt.loadNpmTasks 'grunt-contrib-jade'
    grunt.loadNpmTasks 'grunt-contrib-clean'
    grunt.loadNpmTasks 'grunt-contrib-watch'
    
    grunt.registerTask 'default', ['watch']
