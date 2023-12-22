document.addEventListener("DOMContentLoaded", function () {
            document.getElementById("inputCantidad").addEventListener("change", actualizaTotal);
            document.getElementById("inputCategoria").addEventListener("change", actualizaTotal);
          });

          function actualizaTotal() {
            let estudiante = 40;
            let trainer = 100;
            let junior = 170;
            let total = 0;
            let entrada = 200;

            let cantidad = parseInt(document.getElementById("inputCantidad").value);
            let categoria = parseInt(document.getElementById("inputCategoria").value);

            if(categoria===0){
        total = (entrada*cantidad);
    }
    
    else if(categoria===1){
        total = (entrada*cantidad*0.20);
    }

    else if(categoria===2){
        total = (entrada*cantidad*0.50);
    }

    else if(categoria===3){
        total = (entrada*cantidad*0.85);
    }
            	

            
            

            document.getElementById("resultadoInput").value = "Total a pagar $" + total.toFixed(2);
          }
		
    function borrar(){
        document.getElementById("inputNombre").value = "";
        document.getElementById("inputApellido").value = "";
        document.getElementById("inputCorreo").value = "";
        document.getElementById("inputCantidad").value = "";
        document.getElementById("inputCategoria").value = "0";
        document.getElementById("total").innerText = "";
    }


    document.addEventListener("DOMContentLoaded", function(){
        const button = document.getElementById("comprar");
        button.addEventListener("click", actualizaTotal);
    });

    document.addEventListener("DOMContentLoaded", function(){
        const button = document.getElementById("borrar");
        button.addEventListener("click", borrar);
    });


    function evitarNegativo(e) {
        if (e.key === "-")
          e.preventDefault();
      };
      
  