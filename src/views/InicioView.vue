<template>
  <div>
    <!-- Header -->
    <header class="header">
      <img src="@/assets/logo.png" alt="Logo" class="logo" />
    </header>

    <!-- Texto y botones -->
    <section class="content">
      <!-- Título principal -->
      <h1 class="title">
        Entrar a las Aulas del Instituto Tecnológico en Ensenada
      </h1>
      <!-- Subtítulo -->
      <p class="subtitle">Selecciona el perfil</p>

      <!-- Botones -->
      <div class="buttons-container">
        <button class="button">Alumno</button>
        <button class="button">Asesor</button>
        <button class="button">Administrador</button>
      </div>
    </section>
  </div>
</template>

<style>
/* Header pegado arriba */
.header {
  position: fixed;
  top: 0;
  width: 100%;
  background-color: #2e2a67; /* Azul marino */
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100px;
  z-index: 10; /* Asegura que el header siempre esté visible */
}

/* Logo pequeño en el header */
.logo {
  max-height: 80px;
  height: auto;
}

/* Contenedor principal */
.content {
  margin-top: 120px; /* Espaciado para que no se solape con el header */
  text-align: center;
}

/* Título principal */
.title {
  font-size: 1.5rem;
  font-weight: bold;
  color: #2e2a67; /* Azul marino */
  margin-bottom: 10px;
  height: 100px;
}

/* Subtítulo */
.subtitle {
  font-size: 1rem;
  color: #444; /* Gris oscuro para contraste */
  margin-bottom: 20px;
}

/* Contenedor de botones */
.buttons-container {
  display: flex;
  flex-direction: column;
  align-items: center;
}

/* Botones con fondo azul marino */
.button {
  width: 200px;
  margin-bottom: 10px;
  background-color: #2e2a67; /* Azul marino */
  color: white; /* Texto blanco para contraste */
  border: none;
  border-radius: 25px; /* Bordes redondeados */
  padding: 10px;
  font-size: 16px;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Sombra sutil */
  transition: transform 0.2s, background-color 0.2s;
}

/* Efecto hover para los botones */
.button:hover {
  transform: scale(1.05);
  background-color: #1a1a5e; /* Azul más oscuro en hover */
}
</style>
