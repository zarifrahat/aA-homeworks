function mysteryScoping1() {
    var x = 'out of block';
    if (true) {
        var x = 'in block';
        console.log(x);
    }
    console.log(x);
}

function mysteryScoping2() {
    const x = 'out of block';
    if (true) {
        const x = 'in block';
        console.log(x);
    }
    console.log(x);
}

function mysteryScoping3() {
    const x = 'out of block';
    if (true) {
        var y = 'in block';
        console.log(y);
    }
    console.log(x);
}

function mysteryScoping4() {
    let x = 'out of block';
    if (true) {
        let x = 'in block';
        console.log(x);
    }
    console.log(x);
}

function mysteryScoping5() {
    let x = 'out of block';
    if (true) {
        let x = 'in block';
        console.log(x);
    }
    let y = 'out of block again';
    console.log(x);
}

//madLib

function madLib(str1, str2, str3) {
   return `We shall ${str1.toUpperCase()} the ${str2.toUpperCase()} ${str3.toUpperCase()}.`
}

console.log(madLib('make', 'best', 'guac'));
// "We shall MAKE the BEST GUAC."

//isSubstring

function isSubstring(searchString, subString) {
    return searchString.includes(subString);

}

console.log(isSubstring("time to program", "time"));

// true
console.log(isSubstring("Jump for joy", "joys"));
 
// false

function fizzBuzz(array) {
    let final = [];
    array.forEach(element => {
        if((element % 3 == 0 || element % 5 == 0) && !(element % 3 == 0 && element % 5 == 0)){
            final.push(element);
        }
    }); 
    return final;
}

console.log(fizzBuzz([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]));


function isPrime(number) {
    if (number < 2) {
        return false;
    }

    for (let i = 2; i < number; i++ ){
        if (number % i == 0) {
            return false;
        }
    }
    return true;
}

console.log(isPrime(23))
console.log(isPrime(25))


function sumOfNPrimes(n) {
    let sum = 0;
    let i = 2;
    let counter = n;
    while (counter > 0) {
        if (isPrime(i)) {
            sum += i;
            counter--;
        }
        i++;
    }
    return sum;
}

console.log(sumOfNPrimes(0))
// 0
console.log(sumOfNPrimes(1))
// 2

console.log(sumOfNPrimes(4))
// 17

