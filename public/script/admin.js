const users =[
    {name: "John", ticketID: "12345"},
    {name: "Mark", ticketID: "12346"}
];
function updateTrip(){
    const cityInput = document.getElementById("city");
    const timeInput = document.getElementById("time");

    const newCity =cityInput.value;
    const newTime = timeInput.value;

    alert('Trip details updated:\nCity: ${newCity}\nTime: ${newTime}');
}
function displayUserInformation(){
    const userInfoDiv = document.getElementById("userInfo");
    userInfoDiv.innerHTML = "<h3> User Information</h3>";

    userInfoDiv.forEach(user =>{
        userInfoDiv.innerHTML +=`<p> Name: ${user.name}, Ticket ID: ${user.ticketID}</p>`;
    });
    }
displayUserInformation();