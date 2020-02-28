<template>
    <div class="container">
        <img src="../assets/universidad2.jpeg" class="imagen">
    <h1 class="titulo">Software para la caracterizacion de la deserción y la inclusión D&I</h1>
        <h2>Bienvenido a la encuesta de análisis de permanencia universitaria.</h2>
        <form @submit.prevent="addPoll()">
            <p>
                 
                Llena tus datos personales en la casillas a continuación (nombre, código, sexo, etc.)
                para que estos queden registrados en nuestra base de datos y así podremos utilizarlos 
                para hacer un seguimiento a los estudiantes y conocer mejor sus situaciones actuales en 
                las que requieran apoyo para reducir riesgos de deserción. Si lo deseas, puedes omitir el
                llenar estos campos y realizar la encuesta de todas formas, para ver tus datos sin 
                compartirlos ni guardarlos en nuestra base de datos.
            </p>
        <div class="form-group">
            
            <input type="text" class="form-control my-2" placeholder ="Nombre Estudiante"
            v-model="poll.name">
            <input type="text" class="form-control my-2" placeholder ="Email"
            v-model="poll.email">
            <input type="text" class="form-control my-2" placeholder ="Edad"
            v-model="poll.edad">
            <input type="text" class="form-control my-2" placeholder ="Sexo"
            v-model="poll.sexo">
            
            <br>
            <br>

            <p>Pregunta 1: Califica de 0 a 5 tu perseverancia, siendo 0 poco perseverante y 5 muy perseverante.</p>
            <b-form-radio-group  v-model="poll.question1" :options="calificacion" ></b-form-radio-group>
            <br>
            <p>Pregunta 2: Califica de 0 a 5 tu perseverancia, siendo 0 poco perseverante y 5 muy perseverante.</p>
            <b-form-radio-group  v-model="poll.question2" :options="calificacion" ></b-form-radio-group>
            <br>
            <p>Pregunta 3: Califica de 0 a 5 tu perseverancia, siendo 0 poco perseverante y 5 muy perseverante.</p>
            <b-form-radio-group  v-model="poll.question3" :options="calificacion" ></b-form-radio-group>
            <br>
            <p>Pregunta 4: Califica de 0 a 5 tu perseverancia, siendo 0 poco perseverante y 5 muy perseverante.</p>
            <b-form-radio-group  v-model="poll.question4" :options="calificacion" ></b-form-radio-group>
            <br>
            <p>Pregunta 5: Califica de 0 a 5 tu perseverancia, siendo 0 poco perseverante y 5 muy perseverante.</p>
            <b-form-radio-group  v-model="poll.question5" :options="calificacion" ></b-form-radio-group>
            <br>
            <p>Pregunta 6: Califica de 0 a 5 tu perseveancia, siendo 0 poco perseverante y 5 muy perseverante.</p>
            <b-form-radio-group  v-model="poll.question6" :options="calificacion" ></b-form-radio-group>
            <br>
            <p>Pregunta 7: Califica de 0 a 5 tu perseverancia, siendo 0 poco perseverante y 5 muy perseverante.</p>
            <b-form-radio-group  v-model="poll.question7" :options="calificacion" ></b-form-radio-group>
            <br>
            <p>Pregunta 8: Califica de 0 a 5 tu perseverancia, siendo 0 poco perseverante y 5 muy perseverante.</p>
            <b-form-radio-group  v-model="poll.question8" :options="calificacion" ></b-form-radio-group>
            <p>Pregunta 9: Califica de 0 a 5 tu perseveancia, siendo 0 poco perseverante y 5 muy perseverante.</p>
            <b-form-radio-group  v-model="poll.question9" :options="calificacion" ></b-form-radio-group>
            <br>
            <p>Pregunta 10: Califica de 0 a 5 tu perseverancia, siendo 0 poco perseverante y 5 muy perseverante.</p>
            <b-form-radio-group  v-model="poll.question10" :options="calificacion" ></b-form-radio-group>
            <br>

            
            
            
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
            poll: {name: "", email: "", edad: "", sexo: "", question1: ""},
            radio: null,
            calificacion:[
                {value: 1, text: "1"},
                {value: 2, text: "2"},
                {value: 3, text: "3"},
                {value: 4, text: "4"},
                {value: 5, text: "5"}
            ]
        }
        
    },
    methods: {
        addPoll(){
            console.log(this.poll);
            this.axios.post('/polls', this.poll)
            .then(res =>{
                console.log(res)
                this.poll.name=""
                this.poll.email=""
                this.poll.question1=""
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
  color: rgb(17, 70, 42);
  padding: 5%;
  float: left;
}
.imagen{
  float: left;
  padding-left: 10% 
}
</style>