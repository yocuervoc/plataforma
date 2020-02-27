import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/about',
    name: 'About',
    
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  },
  {
    path: '/movies',
    name: 'movies',
    
    component: () => import(/* webpackChunkName: "about" */ '../views/Movies.vue')
  },
  {
    path: '/agregar',
    name: 'agregar',
    
    component: () => import(/* webpackChunkName: "about" */ '../views/Agregar.vue')
  },
  {
    path: '/reservar',
    name: 'reservar',
    
    component: () => import(/* webpackChunkName: "about" */ '../views/Reservar.vue')
  },
  {
    path: '/opciones',
    name: 'Opciones',
    
    component: () => import(/* webpackChunkName: "about" */ '../views/Opciones.vue')
  },

]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
