<template>
  <div id="app">
  <v-app>
    <p>{{ message }}</p>
    <v-alert
      :value="true"
      type="success" >
      This is a success alert.
    </v-alert>
  </v-app>
  </div>
</template>

<script>
export default {
  data: function () {
    return {
      message: "Hello Vue World!"
    }
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
