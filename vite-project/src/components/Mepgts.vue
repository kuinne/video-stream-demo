<script setup>
import mpegts from 'mpegts.js'
import { ref, onMounted } from 'vue'
import VConsole from 'vconsole'
const isSupported = ref(true)
onMounted(() => {
  new VConsole()
  var videoElement = document.getElementById('videoElement')
  var player = mpegts.createPlayer({
    type: 'flv', // could also be mpegts, m2ts, flv
    isLive: true,
    // url: 'http://192.168.1.4:5173:8080/live/livestream.flv',
    url: 'http://192.168.1.4:8080/live/livestream.flv',
  })
  player.attachMediaElement(videoElement)
  player.load()
  player.play()
})
</script>

<template>
  <div>
    <h3>hello</h3>
    <video id="videoElement" muted controls></video>
  </div>
</template>

<style scoped>
.logo {
  height: 6em;
  padding: 1.5em;
  will-change: filter;
  transition: filter 300ms;
}
.logo:hover {
  filter: drop-shadow(0 0 2em #646cffaa);
}
.logo.vue:hover {
  filter: drop-shadow(0 0 2em #42b883aa);
}
</style>
