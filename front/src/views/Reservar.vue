<template>
    <div class="container">
        <h1>Reservar</h1>
        <form @submit.prevent="booking()">
        <div class="form-group">
            
            <input type="text" class="form-control my-2" placeholder ="Nombre"
            v-model="movie.name">
            <input type="text" class="form-control my-2" placeholder ="cedula"
            v-model="movie.url">
            <input type="text" class="form-control my-2" placeholder ="correo"
            v-model="movie.date">
            
        </div>
        
        <div class="form-group form-check">
            <input type="checkbox" class="form-check-input" id="exampleCheck1">
            <label class="form-check-label" for="exampleCheck1">Check me out</label>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</template>
<script>
export default {
    data(){
        return{
            client: {name: "", cedula: "", email: "", movie_id: ""}
        }
    },
    methods: {
        addMovie(){
            console.log(this.client);
            this.axios.post('/bookings', this.client)
            .then(res =>{
                console.log(res)
                this.client.name=""
                this.client.cedula=""
                this.client.email=""
                this.client.movie_id=""
            })
            .catch(e =>{
                console.log(e.response);
            })
        }
        
    }
}
</script>