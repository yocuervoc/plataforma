<template>
  <div class="home">
    <img alt="Vue logo" src="../assets/estadistica.jpg">
    <HelloWorld msg="Estadisticas"/>
    <vue-poll v-bind="options" @addvote="addVote"/>
  </div>
</template>

<script> 
    
    import VuePoll from 'vue-poll'
    
    export default {        
        data() {
            return {
                options: {
                    question: 'ver',
                    answers: [
                        { value: 1, text: '1', votes: 53 },
                        { value: 2, text: '2', votes: 35 },
                        { value: 3, text: '3', votes: 30 },
                        { value: 4, text: '4', votes: 10 }, 
                        { value: 4, text: '5', votes: 10 } 
                    ]
                },
                students: []
            }
        },
        components: {
            VuePoll
        },
        methods: {
            addVote(obj){
                console.log('You voted ' + obj.value + '!');
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
    }
</script>