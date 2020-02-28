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
            <p>Pregunta 11: Califica de 0 a 5 tu perseverancia, siendo 0 poco perseverante y 5 muy perseverante.</p>
            <b-form-radio-group  v-model="poll.question11" :options="calificacion" ></b-form-radio-group>
            <br>
            <p>Pregunta 12: Califica de 0 a 5 tu perseverancia, siendo 0 poco perseverante y 5 muy perseverante.</p>
            <b-form-radio-group  v-model="poll.question12" :options="calificacion" ></b-form-radio-group>
            <br>
            <p>Pregunta 13: Califica de 0 a 5 tu perseverancia, siendo 0 poco perseverante y 5 muy perseverante.</p>
            <b-form-radio-group  v-model="poll.question13" :options="calificacion" ></b-form-radio-group>
            <br>
            <p>Pregunta 14: Califica de 0 a 5 tu perseverancia, siendo 0 poco perseverante y 5 muy perseverante.</p>
            <b-form-radio-group  v-model="poll.question14" :options="calificacion" ></b-form-radio-group>
            <br>
            <p>Pregunta 15: Califica de 0 a 5 tu perseverancia, siendo 0 poco perseverante y 5 muy perseverante.</p>
            <b-form-radio-group  v-model="poll.question15" :options="calificacion" ></b-form-radio-group>
            <br>
            <p>Pregunta 16: Califica de 0 a 5 tu perseverancia, siendo 0 poco perseverante y 5 muy perseverante.</p>
            <b-form-radio-group  v-model="poll.question16" :options="calificacion" ></b-form-radio-group>
            <br>
            <p>Pregunta 17: Califica de 0 a 5 tu perseverancia, siendo 0 poco perseverante y 5 muy perseverante.</p>
            <b-form-radio-group  v-model="poll.question17" :options="calificacion" ></b-form-radio-group>
            <br>
            <p>Pregunta 18: Califica de 0 a 5 tu perseverancia, siendo 0 poco perseverante y 5 muy perseverante.</p>
            <b-form-radio-group  v-model="poll.question18" :options="calificacion" ></b-form-radio-group>
            <br>
            <p>Pregunta 19: Califica de 0 a 5 tu perseverancia, siendo 0 poco perseverante y 5 muy perseverante.</p>
            <b-form-radio-group  v-model="poll.question19" :options="calificacion" ></b-form-radio-group>
            <br>
            <p>Pregunta 20: Califica de 0 a 5 tu perseverancia, siendo 0 poco perseverante y 5 muy perseverante.</p>
            <b-form-radio-group  v-model="poll.question20" :options="calificacion" ></b-form-radio-group>
            <br>
            <p>Pregunta 21: Califica de 0 a 5 tu perseverancia, siendo 0 poco perseverante y 5 muy perseverante.</p>
            <b-form-radio-group  v-model="poll.question21" :options="calificacion" ></b-form-radio-group>
            <br>
            <p>Pregunta 22: Califica de 0 a 5 tu perseverancia, siendo 0 poco perseverante y 5 muy perseverante.</p>
            <b-form-radio-group  v-model="poll.question22" :options="calificacion" ></b-form-radio-group>
            <br>
            <p>Pregunta 23: Califica de 0 a 5 tu perseverancia, siendo 0 poco perseverante y 5 muy perseverante.</p>
            <b-form-radio-group  v-model="poll.question23" :options="calificacion" ></b-form-radio-group>
            <br>
            <p>Pregunta 24: Califica de 0 a 5 tu perseverancia, siendo 0 poco perseverante y 5 muy perseverante.</p>
            <b-form-radio-group  v-model="poll.question24" :options="calificacion" ></b-form-radio-group>
            <br>
            <p>Pregunta 25: Califica de 0 a 5 tu perseverancia, siendo 0 poco perseverante y 5 muy perseverante.</p>
            <b-form-radio-group  v-model="poll.question25" :options="calificacion" ></b-form-radio-group>
            <br>
            <p>Pregunta 26: Califica de 0 a 5 tu perseverancia, siendo 0 poco perseverante y 5 muy perseverante.</p>
            <b-form-radio-group  v-model="poll.question26" :options="calificacion" ></b-form-radio-group>
            <br>
            <p>Pregunta 27: Califica de 0 a 5 tu perseverancia, siendo 0 poco perseverante y 5 muy perseverante.</p>
            <b-form-radio-group  v-model="poll.question27" :options="calificacion" ></b-form-radio-group>
            <br>
            <p>Pregunta 28: Califica de 0 a 5 tu perseverancia, siendo 0 poco perseverante y 5 muy perseverante.</p>
            <b-form-radio-group  v-model="poll.question28" :options="calificacion" ></b-form-radio-group>
            <br>
            <p>Pregunta 29: ¿Consume actualmente algún tipo de sustancia alucinogena?.</p>
            <b-form-radio-group  v-model="poll.question29" :options="respuesta" ></b-form-radio-group>
            <br>
            <p>Pregunta 30: ¿Se encuentran tú o tu pareja en estado de embarazo en este momento?</p>
            <b-form-radio-group  v-model="poll.question30" :options="respuesta" ></b-form-radio-group>
            <br>
            <p>Pregunta 31: ¿Has tenido en el pasado algún tipo de conducta depresiva?</p>
            <b-form-radio-group  v-model="poll.question31" :options="respuesta" ></b-form-radio-group>
            <br>
            <p>Pregunta 32: ¿Has tenido en el pasado algún intento de suicidio?</p>
            <b-form-radio-group  v-model="poll.question32" :options="respuesta" ></b-form-radio-group>
            <br>
            <p>Pregunta 33: ¿Tienes actualmente algún tipo de preocupación que consideras que afecta tu desempeño academico?</p>
            <b-form-radio-group  v-model="poll.question33" :options="respuesta" ></b-form-radio-group>
            <br>
            <p>Pregunta 34: ¿Sufres actualmente de algún grado de depresión?</p>
            <b-form-radio-group  v-model="poll.question34" :options="respuesta" ></b-form-radio-group>
            <br>
            <p>Pregunta 35: ¿Has tenido ideas suicidas en el ultimo año?</p>
            <b-form-radio-group  v-model="poll.question35" :options="respuesta" ></b-form-radio-group>
            <br>
            <p>Pregunta 36: ¿Alguna vez has intentado suicidarte?</p>
            <b-form-radio-group  v-model="poll.question36" :options="respuesta" ></b-form-radio-group>
            <br>
            <p>Pregunta 37: ¿Te sientes sometido a algún tipo de acoso sexual actualmente en tu entorno familiar?</p>
            <b-form-radio-group  v-model="poll.question37" :options="respuesta" ></b-form-radio-group>
            <br>
            <p>Pregunta 38: ¿Te sientes sometido a algún tipo de acoso sexual actualmente en tu entorno universitario?</p>
            <b-form-radio-group  v-model="poll.question38" :options="respuesta" ></b-form-radio-group>
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
            poll: {
                name: "", email: "", edad: "", sexo: "", 
                question1: "",
                question2: "",
                question3: "",
                question4: "",
                question5: "",
                question6: "",
                question7: "",
                question8: "",
                question9: "",
                question11: "",
                question12: "",
                question13: "",
                question14: "",
                question15: "",
                question16: "",
                question17: "",
                question18: "",
                question19: "",
                question20: "",
                question21: "",
                question22: "",
                question23: "",
                question24: "",
                question25: "",
                question26: "",
                question27: "",
                question28: "",
                question29: "",
                question30: "",
                question31: "",
                question32: "",
                question33: "",
                question34: "",
                question35: "",
                question36: "",
                question37: "",
                question38: ""                
                },
            radio: null,
            calificacion:[
                {value: 1, text: "1"},
                {value: 2, text: "2"},
                {value: 3, text: "3"},
                {value: 4, text: "4"},
                {value: 5, text: "5"}
            ],
            respuesta:[
                {value: "si", text: "si"},
                {value: "no", text: "no"}
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
                this.poll.question2=""
                this.poll.question3=""
                this.poll.question4=""
                this.poll.question5=""
                this.poll.question6=""
                this.poll.question7=""
                this.poll.question8=""
                this.poll.question9=""
                this.poll.question10=""
                this.poll.question11=""
                this.poll.question12=""
                this.poll.question13=""
                this.poll.question14=""
                this.poll.question15=""
                this.poll.question16=""
                this.poll.question17=""
                this.poll.question18=""
                this.poll.question19=""
                this.poll.question20=""
                this.poll.question21=""
                this.poll.question22=""
                this.poll.question23=""
                this.poll.question24=""
                this.poll.question25=""
                this.poll.question26=""
                this.poll.question27=""
                this.poll.question28=""
                this.poll.question29=""
                this.poll.question30=""
                this.poll.question31=""
                this.poll.question32=""
                this.poll.question33=""
                this.poll.question34=""
                this.poll.question35=""
                this.poll.question36=""
                this.poll.question37=""
                this.poll.question38=""


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