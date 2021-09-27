//DECLARATION
const personnage = characterTrait();
const style = characterStyle();
const work = characterProfession();

//AUTOMATION
function randomArrayElement(a){
    const randomIndex = Math.floor(Math.random()* a.length);
    return a[randomIndex]
}
//APPEND

function updateIdea(){
var p = randomArrayElement(personnage)
var s = randomArrayElement(style) 
var w = randomArrayElement(work)

$("#drawIdea .personnage").text(p)
$("#drawIdea .style").text(s)
$("#drawIdea .profession").text(w)
}

