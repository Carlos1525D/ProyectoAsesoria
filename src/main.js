import { createApp } from 'vue'
import App from './App.vue'
import 'bulma/css/bulma.css';
import { createRouter, createWebHistory } from 'vue-router';
import InicioView from './views/InicioView.vue';
import LoginAsesoradoView from './views/LoginAsesoradoView.vue';
import CrearAsesoradoView from './views/CrearAsesoradoView.vue';
import RecuperarAsesoradoView from './views/RecuperarAsesoradoView.vue';
import MenuAsesoradoView from './views/MenuAsesoradoView.vue';
import PerfilAsesoradoView from './views/PerfilAsesoradoView.vue';
import NotiAsesoradoView from './views/NotiAsesoradoView.vue';
import SolicitudTemaView from './views/SolicitudTemaView.vue';
import EvaluacionView from './views/EvaluacionView.vue';

// Define las rutas
const routes = [
  {
    path: '/',
    name: 'Inicio',
    component: InicioView,
  },
  {
    path: '/login-alumno',
    name: 'LoginAsesorado',
    component: LoginAsesoradoView,
  },
  {
    path: '/crear-Asesorado',
    name: 'CrearAsesorado',
    component: CrearAsesoradoView,
  },
  {
    path: '/recuperar-Asesorado',
    name: 'RecuperarAsesorado',
    component: RecuperarAsesoradoView,
  },
  {
    path: '/menu-Asesorado',
    name: 'MenuAsesorado',
    component: MenuAsesoradoView,
  },
  {
    path: '/perfil-Asesorado',
    name: 'PerfilAsesorado',
    component: PerfilAsesoradoView,
  },
  {
    path: '/noti-Asesorado',
    name: 'NotiAsesorado',
    component: NotiAsesoradoView,
  },
  {
    path: '/solicitud-tema',
    name: 'SolicitudTema',
    component: SolicitudTemaView,
  },
  {
    path: '/evaluacion',
    name: 'Evaluacion',
    component: EvaluacionView,
  },
];

// Configura el router
const router = createRouter({
  history: createWebHistory(),
  routes,
});

// Crea la aplicación Vue
const app = createApp(App);
app.use(router); // Usa Vue Router
app.mount('#app');
