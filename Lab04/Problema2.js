function randomNum() {
    return Math.floor(Math.random() *100) + 1;
}

function question() {
    let num1= randomNum();
    let num2= randomNum();
    let result= num1 + num2

    //tiempo
    let startime= new Date().getTime();
    let answer =  prompt("Cuál es el resultado de la suma " + num1 + "+" + num2);
    let endtime= new Date().getTime();

    let finalTime= (endtime - startime) / 1000; //seggundos

    if (answer == (num1 + num2) ){
        document.getElementById("resultado").innerHTML = "Tu respuesta es correcta!!  Tardaste: " + finalTime +" segundos "; 
    }
    else {
        document.getElementById("resultado").innerHTML ="Tu respuesta es incorrecta!!  La respuesta correcta era " + result + ", tardaste en responder: " + finalTime + "segundos";     
    }

}

