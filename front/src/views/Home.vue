<template>

  <div class="home">
    
    <head>
      <link rel="stylesheet" href="../assets/styles/estilos.css">
    </head>
    
    <img src="../assets/universidad2.jpeg" class="imagen">
    <h1 class="titulo">Software para la caracterizacion de la deserción y la inclusión D&I</h1>

        <table class="table" :class="tabla">
        
        <tr>
            <td><router-link to="/ver">1.inicio</router-link></td>
            <td><router-link to="/ver">2.Registro</router-link></td>
            <td><router-link to="/ver">3.ver estudiantes</router-link></td>
            <td><router-link to="/ver">4.Realizar Encuesta</router-link></td>
        </tr>
        <tr>
            <td><router-link to="/ver">5.Alarmas I&D</router-link></td>
            <td><router-link to="/ver">6.Curso D&</router-link></td>
            <td><router-link to="/ver">7.reportes</router-link></td>
            <td><router-link to="/ver">8.Ayuda</router-link></td>
        </tr>

    </table>

    
    <p class="bienvenida">Bienvenido al Software  para la caracterización de la deserción y la inclusión D&I</p>
    <br>
    <p class="terminos">Términos y condiciones de uso del Software  para la caracterización de la 
      deserción y la inclusión D&I. en la plataforma web Y/O sus aplicativos derivados o complementarios de la UNIVERSIDAD DE CUNDINAMARCA
      es de propiedad de LA UNIVERSIDAD DE CUNDINAMARCA. El acceso, participación y uso de la Plataforma es
       gratuito y está regido por los términos y condiciones, los cuales se entienden conocidos y aceptados
        por los (las) usuarios(as) de la Plataforma (en adelante el Usuario) para el uso y consulta de la 
        Plataforma. Bajo estos Términos y Condiciones usted puede usar la Plataforma Institucional de la 
        UNIVERSIDAD DE CUNDINAMARCA
      
    </p>
  </div>
</template>
<style  scoped>
.titulo{
  color: rgb(17, 70, 42);
  padding: 5%;
  float: left;
  position: relative;
  margin-left: 22%;
  margin-top: -20%
}
.imagen{
  float: left;
  padding-left: 10% 
}

.bienvenida{
  position: absolute;
  margin-left: 52%;
  margin-top: 4%;
  color:rgb(17, 70, 42);
}
.terminos{
  color:rgb(17, 70, 42);
  position: absolute;
  margin-top: 6%;
  margin-left: 0%;
  padding: 3%;
  text-align: justify
}
.tabla {
  padding-top: 5%;
  color: rgb(17, 70, 42);
  position: absolute;
  margin-top: 27%;
  margin-left: 0%;
  
}
</style>
