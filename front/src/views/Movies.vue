<template>
    <div class="container">
        <h1>Estudiantes</h1>
        <table class="table">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Nombre</th>
      <th scope="col">Email</th>

      
    </tr>
  </thead>
  <tbody>
    <tr v-for="(item, index) in students" :key="index">
      <td>{{item.id}}</td>
      <td>{{item.name}}</td>
      <td>{{item.email}}</td>
      <router-link to="/ver">reservar</router-link>
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
            students: []
        }

    },
    created(){
        this.listarPeliculas();
    },
    methods: {
        listarPeliculas(){
            this.axios.get('/polls')
            //this.axios.get('/todos')
            .then(res => {
                console.log(res.data);
                this.students = res.data
            })
            .catch(e =>{
                console.log(e.response);
            })
        }
    }
}
</script>
