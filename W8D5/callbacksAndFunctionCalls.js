window.setTimeout(function () { 
    alert("HAMMERTIME"); 
}, 5000);

function hammerTime(time){
    window.setTimeout(function(){
        alert(`${time} is hammertime!`)
    }, time);
}

const readline = require('readline');
const reader = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

function likeTeaAndBiscuits(){
    let answer1, answer2;
    reader.question("Would you like some tea?", (res)=> {
        answer1 = res;
        console.log(`Oh, so you said ${answer1}`);
    });
     reader.question("Would you like some biscuits?", (res)=> {
        answer2 = res;

        console.log(`Oh, so you said ${ answer2 }`);
    });
    console.log(`So you ${ answer1 } want tea and you ${ answer2 } want biscuits`};
}

