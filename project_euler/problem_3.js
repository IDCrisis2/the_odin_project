// Problem #3 from Project Euler

var factor = [];
var i = 2;
var prime = function(number) {
    while (i * i <= number) {        
        while (number % i === 0) {
            number = number / i;
            
        }
        i += 1;
    }
    return number;
};
prime(600851475143);