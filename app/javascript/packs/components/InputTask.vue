<template>
  <div class='InputTask'>
    <v-layout row wrap>
      <v-flex xs6>
        <v-form ref='form' v-on:submit.prevent='addtask(taskname)'> <!-- form内部を全部マテリアルUIに変更.-->
          <v-text-field v-model='taskname' placeholder='input the task'></v-text-field> 
          <v-btn v-on:click.prevent='addtask(taskname)' color='success' dark>Submit</v-btn>
        </v-form>
      </v-flex>
    </v-layout>
  </div>
</template>

<script>
export default {
  name: 'InputTask',
  data () {
    return {
      taskname: ''
    }
  },
  methods: {
    addtask: function (msg) {
      this.$emit('child-event', msg)
      this.taskname = ''
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>