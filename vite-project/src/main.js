import { createApp } from 'vue'
import './style.css'
import App from './App.vue'

NodePlayer.load(() => {
  createApp(App).mount('#app')
})
