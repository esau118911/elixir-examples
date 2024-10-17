// Ejemplo de Mutabilidad en JavaScript 

array = [1, 2, 3, 4]

for(i = 0; i < array.length; i++) {
    array[i] = array[i] * 2;
}
console.log(array);