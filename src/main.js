import Vue from 'vue'
import App from './App.vue'

// import VModal from 'vue-js-modal'
import VModal from 'vue-js-modal/dist/index.nocss.js'

import VueImg from 'v-img'
import { vfmPlugin } from "vue-final-modal"





Vue.use(VModal)
Vue.use(VueImg)
Vue.use(vfmPlugin)

import './assets/base.css'
import './assets/main.css'

import 'hooper/dist/hooper.css';
import 'vue-js-modal/dist/styles.css'




new Vue({
  render: (h) => h(App)
}).$mount('#app')
