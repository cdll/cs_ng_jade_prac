module.exports= (grunt)->
    
    grunt.initConfig
        clean:
            build:
                expand: true
                src: ['js', 'css', 'views']
        coffee:
            build:
                files:
                    './js/app.js': './src/coffee/*.coffee'
#                expand: true
        less:
            build:
                files:
                    './css/app.css': './src/less/*.less'
        jade:
            build:
                files:
                    './views/index.html': 'src/jade/index.jade'
#                expand: true
        watch:
            files: ['src/*/*']
            tasks: ['clean', 'coffee', 'less', 'jade']

    grunt.loadNpmTasks 'grunt-contrib-clean'
    grunt.loadNpmTasks 'grunt-contrib-coffee'
    grunt.loadNpmTasks 'grunt-contrib-less'
    grunt.loadNpmTasks 'grunt-contrib-jade'
    grunt.loadNpmTasks 'grunt-contrib-watch'
    
    grunt.registerTask 'default', ['watch']
