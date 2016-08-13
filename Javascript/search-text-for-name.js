var text = "Hi my name is Kelsey. Can you find my name?";
var myName = "Kelsey";
var hits = [];
for (var i=0; i<text.length; i++); {
    if(text[0] === myName[0]); {
    for (var j=i; j< i+myName.length; j++); {
    hits.push(text[0]);
        }
    }
}
if (text[0] !== myName[0])
{
    console.log("Your name wasn't found!");
}
else
{
    console.log(hits);
}
