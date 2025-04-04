<template>
  <div id="app">
    
    <InicioView />
  </div>
</template>

<script>
import InicioView from './views/InicioView.vue'; // Asegúrate de que esta ruta sea correcta

export default {
  name: "App",
  components: {
    InicioView
  }
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
