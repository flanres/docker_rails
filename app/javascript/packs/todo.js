//import Vuetify from 'vuetify' // 追加したライブラリを読み込む
//import 'vuetify/dist/vuetify.min.css'
//import 'material-design-icons-iconfont/dist/material-design-icons.css'
//import '@mdi/font/css/materialdesignicons.css'
//import Vue from 'vue'
import Vue from 'vue/dist/vue.esm.js'
import Router from './router/router'
import Header from './components/header.vue'

//Vue.use(Vuetify) // Vueライブラリは使用を宣言。グローバルスコープ。

var app = new Vue({
  router: Router,
  el: '#app',
  components: {
    'navbar': Header,
  }
});
