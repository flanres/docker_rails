import Vuetify from 'vuetify' // 追加したライブラリを読み込む
import 'vuetify/dist/vuetify.min.css'
import 'material-design-icons-iconfont/dist/material-design-icons.css'
import '@mdi/font/css/materialdesignicons.css'
import Vue from 'vue'
import App from './App'

Vue.use(Vuetify) // Vueライブラリは使用を宣言。グローバルスコープ。


Vue.config.productionTip = false

/* eslint-disable no-new */
new Vue({
  el: '#app',
  components: { App },
  template: '<App/>'
})