<script setup>
import mpegts from "mpegts.js";
import { ref } from "vue";

onMounted(() => {
  if (mpegts.getFeatureList().mseLivePlayback) {
    var videoElement = document.getElementById("videoElement");
    var player = mpegts.createPlayer({
      type: "flv", // could also be mpegts, m2ts, flv
      isLive: true,
      url: "http://example.com/live/livestream.ts",
    });
    player.attachMediaElement(videoElement);
    player.load();
    player.play();
  }
});
</script>

<template>
  <div>
    <video id="videoElement"></video>
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
