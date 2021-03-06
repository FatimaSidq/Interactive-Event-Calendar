import "./App.css";
import { useState, useEffect } from "react";
import Calendar from "./components/Calendar";
import Todo from "./components/Todo";
import data from "./data.js";
import Nugget from "./components/Nugget";

function App() {
  const [state, setState] = useState({
    day: null,
    month: null,
    year: null,
    temperature: null,
    town: null,
    todo: {},
    nugget: null,
    backgroundUrl: null,
    author: null,
  });

  useEffect(() => {
    data().then((data) => {
      setState(data);
    });
  }, []);

  return (
    <div className="App">
      <Nugget
        nugget={state.nugget}
        backgroundUrl={state.backgroundUrl}
        author={state.author}
        month={state.month}
        year={state.year}
        day={state.day}
      />
      <div className="calendar-div">
        <Calendar
          days={state.days}
          month={state.month}
          year={state.year}
          day={state.day}
          state={state}
          setState={setState}
        ></Calendar>
        <Todo
          temperature={state.temperature}
          town={state.town}
          todo={state.todo[`${state.month}-${state.day}-${state.year}`]}
          state={state}
          setState={setState}
        />
      </div>
    </div>
  );
}

export default App;
