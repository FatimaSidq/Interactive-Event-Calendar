import "./App.css";
import { useState } from "react";
import Calendar from "./components/Calendar";
import Todo from "./components/Todo";
import data from "./data.js";

function App() {
  const [state, setState] = useState(data);

  return (
    <div className="App">
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
        todo={state.todo}
      />
    </div>
  );
}

export default App;
