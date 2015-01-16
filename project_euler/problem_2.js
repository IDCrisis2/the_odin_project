// Problem #2 from Project Euler

var fib = [];
var fib2 = [];
var fib3 = 0;
var j = 0;
var k = 0;

for (var i = 1; i <= 50; i++) {
    fib.push(i);
}

while(j < fib.length) {
    if (fib[j] <= 3) {
        fib2.push(fib[j]);
    }
    else {
        fib2.push(fib2[j - 1] + fib2[j - 2]);
    } 
    j++;
}

while(k < fib2.length) {
    if (fib2[k] < 4000000) {
        if (fib2[k] % 2 === 0) {
            fib3 += fib2[k];
        }
    }
    k++;
}
console.log(fib3);