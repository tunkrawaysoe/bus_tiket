const cities = ["City A", "City B", "Cit C" ];
const busRoutes=[
{ start: "City A", end: "City B", price: 2000},
{ start: "City A", end: "City C", price: 2000},
{ start: "City B", end: "City A", price: 2000},
{ start: "City B", end: "City B", price: 2000},
{ start: "City C", end: "City A", price: 2000},
{ start: "City C", end: "City B", price: 2000},
];
function displayCities(){
    console.log("Availabe cities:");
    for (let i=0; i<cities.length; i++){
        for(let i=0; i < cities.length; i++){
            console.log('${i +1}. ${cities[i]}');
        }
    }
    function displayRoutes(startIndex, endIndex){
        console.log('Avaiable rotes from ${cities[startIndex - 1]} to {cities[endIndex-1]};');
        for (const rote of busRoutes){
            if (busRoutes.start == cities[startIndex -1] && busRoutes.end === cities[endIndex -1]){
                console.log('Price: $${route.price}');
            }
        }
    }
    console.log("Welcome to the MINMAYLOE BUS!!!!!!!!!!!!!!!");
    displayCities();
    const startIndex = parseInt(prompt("Enter the number of the starting City:"));
    const endIndex = parseInt(prompt("Enter the number of destinaton City: "));
    displayRoutes(startIndex, endIndex);
}