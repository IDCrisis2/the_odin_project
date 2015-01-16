// Problem #1 from Project Euler

var i = 1;
var total = 0;
while (i < 1000) {
    if (i % 3 === 0 || i % 5 === 0) {
        total += i;
        i++;
    }
    else {
        i++;
    }
}
console.log(total);
