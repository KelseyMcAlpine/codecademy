var slaying = true;
var youHit = Math.floor(Math.random()*2);
var damageThisRound = Math.floor(Math.random()*5+1);
var totalDamage = 0;

while(slaying){
    if (youHit) {
        console.log("Congratulations! You hit the dragon!");
        totalDamage += damageThisRound
        if (totalDamage >= 4){
            console.log("The dragon has been slayed!")
            slaying=false;
        }
        else{
            youhit = Math.floor(Math.random()*2);
        }
    }
    else{
        console.log("Oh no! You've been defeated by the dragon.")
    }
    slaying = false;
}
