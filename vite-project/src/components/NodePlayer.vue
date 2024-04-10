//vue 3.0 template
<template>
  <canvas id="video" width="324" height="150" /><br />
  <button v-on:click="startPlay">Start</button>
  <button v-on:click="stopPlay">Stop</button>
</template>

<script>
export default {
  name: 'App',
  mounted: function () {
    this.np = new NodePlayer()
    this.np.setView('video')
    this.np.on('stats', (s) => {
      console.log(s)
    })
  },
  methods: {
    startPlay: function () {
      this.np.start('http://192.168.1.4:8080/live/livestream.flv')
    },
    stopPlay: function () {
      this.np.stop()
    },
  },
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
