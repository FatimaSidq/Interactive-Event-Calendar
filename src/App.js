import "./App.css";
import { useState } from "react";
import Calendar from "./components/Calendar";

function App() {
  const [state, setState] = useState({
    days: [
      { day: 1, active: true },
      { day: 2, active: false },
      { day: 3, active: false },
      { day: 4, active: false },
      { day: 5, active: false },
      { day: 6, active: false },
      { day: 7, active: false },
      { day: 8, active: false },
      { day: 9, active: false },
      { day: 10, active: false },
      { day: 11, active: false },
      { day: 12, active: false },
      { day: 13, active: false },
      { day: 14, active: false },
      { day: 15, active: false },
      { day: 16, active: false },
      { day: 17, active: false },
      { day: 18, active: false },
      { day: 19, active: false },
      { day: 20, active: false },
      { day: 21, active: false },
      { day: 22, active: false },
      { day: 23, active: false },
      { day: 24, active: false },
      { day: 25, active: false },
      { day: 26, active: false },
      { day: 27, active: false },
      { day: 28, active: false },
      { day: 29, active: false },
      { day: 30, active: false },
    ],
    month: "January",
    year: "2022"
  });

  return (
    <div className="App">
      <Calendar days={state.days} month={state.month} year={state.year} setState={setState}></Calendar>
    </div>
  );
}

export default App;
