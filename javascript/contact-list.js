var friends = {
    bill: {
        firstName:'Bill',
        lastName: 'Bo',
        number:'402.215.7570',
        address: ['1234 Dodge Street', 'Omaha', 'NE', '61818']
    },
    steve: {
        firstName:'Steve',
        lastName:'Finkle',
        number: '402.554.2323',
        address: ['3456 Dodge Street', 'Seattle', 'WA', '34212']
    }
};

var list = function (friends) {
    for (var key in friends) 
        {
        console.log(key);
        }
};

var search = function (name)
{
    for (var key in friends)
    {
        if (friends[key].firstName === name){
        console.log(friends[key]);
        return friends[key];
        }
}
};
