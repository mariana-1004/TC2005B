function counter(numbers){
    let positives= 0;
    let negatives= 0;
    let zeros= 0;

    for(let num of numbers){
        if (num < 0){
            negatives++;
        }
        else if (num > 0){
            positives++;
        }
        else{
            zeros++;
        }
    }
    return{negatives, positives, zeros};
}

function arrayAnalysis(){
    console.log("La función arrayAnalysis se está ejecutando.");
    let numsInserted= document.getElementById("numEntrada").value;
    let numbers= numsInserted.split(",").map(Number);
    let result= counter(numbers);

    document.getElementById("results").innerHTML =
        "Números negativos:  " + result.negatives + "<br>" + 
        "Ceros:  " + result.zeros + "<br>" +
        "Numeros positivos:  " + result.positives;


}