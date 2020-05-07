function titleize(array, callback){
    let titilizedArray = array.map(
        word => `Mx. ${word[0].toUpperCase() + word.slice(1, word.length).toLowerCase()} Jingleheimer Schmidt`);
    callback(titilizedArray);
}

function printCallback(array){
    array.forEach(word => console.log(word));
}

titleize(["Mary", "Brian", "Leo"], printCallback);

function Elephant(name, height, tricks){
    this.name = name;
    this.height = height;
    this.tricks = tricks;
}

Elephant.prototype.trumpet = function(){
    console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
}

let e1 = new Elephant("Dumbo", 6, ["jump", "fly"] );

e1.trumpet();

Elephant.prototype.grow = function(){
     this.height += 12;
}

console.log(e1.grow());
console.log(e1);

Elephant.prototype.addTrick = function(trick){
     this.tricks.push(trick);
}

console.log(e1.addTrick("dunk"));
console.log(e1);

Elephant.prototype.play = function(){
    const randomTrick = this.tricks[Math.floor(Math.random() * this.tricks.length)];
     console.log(`${this.name} is ${randomTrick}ing!`);
}

e1.play();

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [e1, ellie, charlie, kate, micah];

Elephant.paradeHelper = function(elephant){
    console.log(`${elephant.name} is trotting by!`);
}

Elephant.paradeHelper(micah);

Elephant.callHerd = function(){
    herd.forEach(
        ele => Elephant.paradeHelper(ele)
    );
}

Elephant.callHerd();

function dinerBreakfast(){
    let order = ["cheesy scrambled eggs"];

    const orderCloser = (newItem) => {
        if (newItem){
            order.push(`and ${newItem}`);
            console.log(`I'd like ${order.join(" ")} please.`);
        }
        console.log(`I'd like ${order} please.`);
    }
    return orderCloser;
}

let bfastOrder = dinerBreakfast();
bfastOrder();
bfastOrder("chocolate chip pancakes");
bfastOrder("grits");
