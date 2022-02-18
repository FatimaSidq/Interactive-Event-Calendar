
let nav=0;
let clicked=null;
let events = localStorage.getItem('events') ? JSON.parse(localStorage.getItem('events')) : [];

const weekdays = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];
const calender =document.getElementById("Calender1")

// this funtion create the calender number you see

function runcalender(){
    // This is to find the current date of day 
   const date1=new Date();
   // this help us to move calender month so like forward we go to march 
   if (nav !== 0) {
    date1.setMonth(new Date().getMonth() + nav);
  }

   //over here we will extract the date,month ,year
   let dt=date1.getDate();
   let mth=date1.getMonth();
   let year=date1.getFullYear();
   console.log(dt,mth,year)
   const daysInMonth = new Date(year, mth + 1, 0).getDate();
   const firstdaywegetmonth=new Date(year,mth,1);
   const Datefirststringval=firstdaywegetmonth.toLocaleString('en-us',{ weekday: 'long',
   year: 'numeric',
   month: 'numeric',
   day: 'numeric',});
   // here we will try to get the padding days 
   const blurdays =weekdays.indexOf(Datefirststringval.split(',')[0])
   console.log(Datefirststringval);
   console.log(daysInMonth);
   console.log(blurdays);

   // over here we will show month and year at top
   document.getElementById('MonthDisplay').innerText = 
    `${date1.toLocaleDateString('en-us', { month: 'long' })} ${year}`;

    // this will help us to clean calender when we click next button in arrowbutton other
    // wise top of
    calender.innerHTML = '';

   for (let i = 1;i<=blurdays+daysInMonth;i++){
       const daybox=document.createElement('div');
       
       daybox.classList.add('day');
        // Checking if the day is padding or not
       if (i >blurdays){
        daybox.innerText=i-blurdays;
        
            //createing event lsiten when ever a peron click thedate
            daybox.addEventListener('click',()=> {console.log("clickme")})
       }else{
        daybox.classList.add('padding');
       }
       //show all calender
       calender.appendChild(daybox)
   }


}
// we are make funtion so that we can scroll betwwen month of year 
function arrowbutton() {
    //this event listener help us to move forward backward
    document.getElementById('revevseButton').addEventListener('click', () => {
        nav--;
        runcalender();
        
  });
  //this event listener help us to move button backward
    document.getElementById('forwardButton').addEventListener('click', () => {
      nav++;
      // this runcalender is to reload the page so we see new values
      runcalender();
    });
  
  
}
arrowbutton();
runcalender();