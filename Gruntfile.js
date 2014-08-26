module.exports = function (grunt) {

  // Project configuration.
  grunt.initConfig({
    nodewebkit: {
      options: {
          build_dir: './build',
          mac: true,
          win: false,
          linux32: false,
          linux64: false
      },
      src: ['./app/**/*']
    }
  });

  // Load the plugin that provides the "nodewebkit" task.
  grunt.loadNpmTasks('grunt-node-webkit-builder');

  // Default task(s).
  grunt.registerTask('default', ['nodewebkit']);

};