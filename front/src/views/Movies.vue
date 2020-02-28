<template>
    <div class="container">
    <h1 class="titulo">Software para la caracterizacion de la deserción y la inclusión D&I</h1>
    <img src="../assets/universidad2.jpeg" class="imagen">
    
    <br>
    <br>
    <h2>Estudiantes</h2>
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
        <router-link to="/estadisticas">Estadisticas</router-link>
      </tr>

    </tbody>
    </table>
<router-link to="/estadisticas">Ver estadisticas</router-link>
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
<style  scoped>
.titulo{
  position: relative;
  color: rgb(17, 70, 42);
  margin-left: 25%
}
.imagen{
  position: relative;
  
  margin-top: -13%;
  margin-left: -65%
}
</style>