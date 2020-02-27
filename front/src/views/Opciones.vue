<template>
    <div class="container">
        <h1>Movies</h1>
        <table class="table">
  <thead>
    <tr>
      <th scope="col">Imagen</th>
      <th scope="col">Nombre</th>
      <th scope="col">Dia</th>
      <th scope="col">Disponibles</th>
      <th scope="col">Reservar</th>
      
    </tr>
  </thead>
  <tbody>
    <tr v-for="(item, index) in movies" :key="index">
      <td>{{item.url}}</td>
      <td>{{item.name}}</td>
      <td>{{item.date}}</td>
      <td>{{item.chairs}}</td>
      <router-link to="/reservar">reservar</router-link>
    </tr>

  </tbody>
</table>
<router-link to="/agregar">Agregar peliculas</router-link>
    </div>
</template>
<script>
export default {
    data(){
        return{
            movies: []
        }

    },
    created(){
        this.listarPeliculas();
    },
    methods: {
        listarPeliculas(){
            this.axios.get('/movies')
            //this.axios.get('/todos')
            .then(res => {
                console.log(res.data);
                this.movies = res.data
            })
            .catch(e =>{
                console.log(e.response);
            })
        }
    }
}
</script>
