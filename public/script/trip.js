const tripData =[
    { from: "Sittwe", to:"Yangon" , departureTime: "05:00 AM" , price:"50000 MMK"},{from:"Yangon",to:"Mandalay",depatureTime:"",price:"MMK"}
];
const tripListElement = document.getElementById("tripList");

function createTripCard(trip){
    const tripCard = document.createElement("div");
    tripCard.classList.add("trip-card");

    tripCard.innerHTML=`
    <h2>Trip: ${trip.from} to ${trip.to}</h2>
    <h3>departureTime: ${trip.departureTime}<h3>
    <p>Price: ${trip.price}</p>
    `;
    return tripCard;
}
function displayTrips(trips){
    tripListElement.innerHTML="";
    trips.forEach(trip =>{
        const tripCard = createTripCard(trip);
        tripListElement.appendChild(tripCard);
    }
        );
}
displayTrips(tripData);