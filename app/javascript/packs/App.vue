<template>
  <div id="app">
    <v-app> <!-- マテリアルUIはv-appタグで全体を囲むこと!!囲まないと色がおかしくなったりします。-->
      <AppBar></AppBar> <!-- AppBarコンポーネントをサイトより拾ってくる。-->
      <InputTask v-on:child-event="TaskAdded"/>
      <taskView v-bind:tasks='tasks' v-on:child-event="TaskFinished"/>
    </v-app>
  </div>
</template>

<script>
import TaskView from './components/TaskView'
import InputTask from './components/InputTask'
import AppBar from './components/AppBar' // AppBarコンポーネントをサイトより拾ってくる。

export default {
  name: 'App',
  components: {
    TaskView,
    InputTask,
    AppBar // コンポーネントを追加
  },
  data () {
    return {
      tasks: [
        {
          name: 'No1',
          flag: false
        },
        {
          name: 'No2',
          flag: true
        },
        {
          name: 'No3',
          flag: false
        }
      ]
    }
  },
  methods: {
    TaskFinished: function (msg) {
      this.tasks.forEach(value => {
        if (value.name === msg) {
          if (value.flag === true) {
            value.flag = false
          } else if (value.flag === false) {
            value.flag = true
          }
        }
      })
    },
    TaskAdded: function (msg) { 
// InputTaskのイベントを受けて発火する関数。
// {受け取ったタスクの名前と初期状態false}でデータ配列の末尾に追加。デバッグ用にコンソール出力も
      console.log(msg)
      this.tasks.push({
        name: msg,
        flag: false
      })
    }
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>