<template>
  <div class="menu-container">
    <!-- Header -->
    <header class="header">
      <img
        ref="menuIcon"
        src="@/assets/menu.png"
        alt="Menú"
        class="menu-icon"
        @click="toggleMenu"
      />
      <img src="@/assets/logo.png" alt="Logo" class="logo" />
    </header>

    <!-- Menú desplegable -->
    <div v-show="menuOpen" class="dropdown-menu">
      
      <button class="dropdown-button"  @click="goToSoliTema">Solicitud de tema</button>
      <button class="dropdown-button" @click="goToMenu">Busqueda de Asesorias</button>
      <button class="dropdown-button" @click="goToNoti">Notificaciones</button>
      <button class="dropdown-button" @click="goToEvaluacion">Evaluación</button>
      <button class="dropdown-button" @click="goToSalir">Salir</button>
    </div>

    <!-- Contenido principal -->
    <div class="content-container">
      <div class="horizontal-section">
        <div class="profile-container">
          <!-- Botón de perfil con imagen -->
          <button class="profile-button" @click="goToPerfil">
            <img src="@/assets/asesorado.png" alt="Perfil" class="profile-icon" />
          </button>
          <p class="profile-name">Nombre completo</p>
        </div>

        <p class="bold-text">Búsqueda de Asesoría</p>

        <div class="notification-container">
          <!-- Botón de notificación con imagen -->
          <button class="notification-button">
            <img src="@/assets/notificacion.png" alt="Notificación" class="notification-icon" @click="goToNoti"/>
          </button>
          <p class="notification-text">Mis notificaciones</p>
        </div>
      </div>

      <div class="search-input-wrapper">
        <img src="@/assets/buscador.png" alt="Buscar" class="search-icon" />
        <input type="text" class="search-input" placeholder="Escribe aquí tu búsqueda..." />
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "MenuAsesoradoView",
  data() {
    return {
      menuOpen: false,
    };
  },
  methods: {
    toggleMenu() {
      this.menuOpen = !this.menuOpen;
    },
    goToPerfil() {
      this.$router.push({ name: "PerfilAsesorado" });
    },
    goToNoti() {
      this.$router.push({ name: "NotiAsesorado" });
    },
    goToMenu() {
      this.$router.push({ name: "MenuAsesorado" });
    },
    goToEvaluacion() {
      this.$router.push({ name: "Evaluacion" });
    },
    goToSoliTema() {
      this.$router.push({ name: "SolicitudTema" });
    },
    goToSalir() {
      this.$router.push({ name: "Inicio" });
    },
  },
};
</script>

<style>
.menu-container {
  position: relative;
}

/* Header */
.header {
  position: fixed;
  top: 0;
  width: 100%;
  background-color: #2e2a67;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100px;
  z-index: 100;
  padding: 0 20px;
}

.menu-icon {
  position: absolute;
  left: 20px;
  width: 40px;
  height: auto;
  cursor: pointer;
}

.logo {
  position: absolute;
  left: 50%;
  transform: translateX(-50%);
  max-height: 80px;
  height: auto;
}

/* Menú desplegable */
.dropdown-menu {
  position: fixed;
  top: 100px;
  left: 20px;
  background-color: white;
  border: 1px solid #ccc;
  border-radius: 5px;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  padding: 10px;
  z-index: 200;
  display: flex;
  flex-direction: column;
  gap: 5px;
}

.dropdown-button {
  display: block;
  width: 150px;
  padding: 10px;
  background-color: #2e2a67;
  color: white;
  border: none;
  text-align: left;
  cursor: pointer;
  border-radius: 5px;
}

.dropdown-button:hover {
  background-color: #1a1a5e;
}

/* Contenido principal */
.content-container {
  display: flex;
  flex-direction: column;
  align-items: center;
  margin-top: 140px;
}

/* Sección de íconos y título */
.horizontal-section {
  display: flex;
  justify-content: space-between;
  align-items: center;
  width: 100%;
  padding: 0 20px;
}

/* Botón de perfil */
.profile-button {
  background: none;
  border: none;
  padding: 0;
  cursor: pointer;
  width: 55px;
}

.profile-button:hover {
  opacity: 0.8;
}

/* Ícono de perfil */
.profile-icon {
  width: 40px;
  height: auto;
}

/* Texto debajo del botón de perfil */
.profile-name {
  font-size: 1rem;
  color: #333;
  text-align: center;
  margin-top: 5px;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

/* Contenedor de notificación */
.notification-container {
  display: flex;
  flex-direction: column;
  align-items: center;
}

/* Botón de notificación */
.notification-button {
  background: none;
  border: none;
  padding: 0;
  cursor: pointer;
  width: 55px;
}

.notification-button:hover {
  opacity: 0.8;
}

/* Ícono de notificación */
.notification-icon {
  width: 16px;
  height: auto;
}

/* Texto debajo del botón de notificación */
.notification-text {
  font-size: 1rem;
  color: #333;
  text-align: center;
  margin-top: 5px;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

/* Búsqueda */
.search-input-wrapper {
  position: relative;
  display: flex;
  align-items: center;
  width: 50%;
  max-width: 500px;
  border: 1px solid #ccc;
  border-radius: 20px;
  padding: 5px;
  background-color: white;
}

.search-input {
  flex: 1;
  border: none;
  outline: none;
  padding: 8px 12px;
  padding-left: 35px; /* Espacio para el icono */
  font-size: 1rem;
}

.search-icon {
  position: absolute;
  left: 10px;
  width: 20px;
  height: 20px;
}


.search-input::placeholder {
  color: #aaa;
  font-style: italic;
}


</style>
