import { createApp } from 'vue'
import App from './App.vue'
import store from './store/index.js'
import vuetify from './plugins/vuetify.js'
import { loadFonts } from './plugins/webfontloader.js'

loadFonts()

createApp(App).use(store).use(vuetify).mount('#app')
