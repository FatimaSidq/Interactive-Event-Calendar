import Day from "./Day";
import "./DayList.css";

export default function DaysList(props) {
  const setDay = (day) => {
    props.setState({
      ...props.state,
      day
    })
  }
  
  let days = [[], [], [], [], [], [], []];

  const daysInMonth = new Date(props.year, props.month + 1, 0).getDate();
  const firstDayOfMonth = new Date(props.year, props.month, 1).getDay();
  const now = new Date();

  for (let i = 0; i < days.length; i += 1) {
    for (let j = 0; j < daysInMonth; j += 7) {
      if (j + i + 1 <= daysInMonth) {
        days[i].push(j + i + 1);
      }
    }
  }

  days = days
    .slice(days.length - firstDayOfMonth)
    .concat(days.slice(0, days.length - firstDayOfMonth));

  const daysInWeek = Math.max(...(days.map(el => el.length))) + 1;

  for (let i = 0; i < days.length; i += 1) {
    if (days[i].length < daysInWeek) {
      if (i < firstDayOfMonth) {
        days[i].unshift(" ");
      } else {
        days[i].push(" ");
      }
    }
  }

  return (
    <div className="day_list">
      <div>
        <h5 className="orange-text">SUN</h5>
        <div>
          {days[0].map((day) => (
            <Day
              key={day}
              day={day}
              active={day === props.day}
              today={day === now.getDate() && props.month === now.getMonth() && props.year === now.getFullYear()}
              setDay={setDay}
            ></Day>
          ))}
        </div>
      </div>
      <div>
        <h5>MON</h5>
        <div>
          {days[1].map((day) => (
            <Day
              key={day}
              day={day}
              active={day === props.day}
              today={day === now.getDate() && props.month === now.getMonth() && props.year === now.getFullYear()}
              setDay={setDay}
            ></Day>
          ))}
        </div>
      </div>
      <div>
        <h5>TUE</h5>
        <div>
          {days[2].map((day) => (
            <Day
              key={day}
              day={day}
              active={day === props.day}
              today={day === now.getDate() && props.month === now.getMonth() && props.year === now.getFullYear()}
              setDay={setDay}
            ></Day>
          ))}
        </div>
      </div>
      <div>
        <h5>WED</h5>
        <div>
          {days[3].map((day) => (
            <Day
              key={day}
              day={day}
              active={day === props.day}
              today={day === now.getDate() && props.month === now.getMonth() && props.year === now.getFullYear()}
              setDay={setDay}
            ></Day>
          ))}
        </div>
      </div>
      <div>
        <h5>THU</h5>
        <div>
          {days[4].map((day) => (
            <Day
              key={day}
              day={day}
              active={day === props.day}
              today={day === now.getDate() && props.month === now.getMonth() && props.year === now.getFullYear()}
              setDay={setDay}
            ></Day>
          ))}
        </div>
      </div>
      <div>
        <h5>FRI</h5>
        <div>
          {days[5].map((day) => (
            <Day
              key={day}
              day={day}
              active={day === props.day}
              today={day === now.getDate() && props.month === now.getMonth() && props.year === now.getFullYear()}
              setDay={setDay}
            ></Day>
          ))}
        </div>
      </div>
      <div>
        <h5 className="orange-text">SAT</h5>
        <div>
          {days[6].map((day) => (
            <Day
              key={day}
              day={day}
              active={day === props.day}
              today={day === now.getDate() && props.month === now.getMonth() && props.year === now.getFullYear()}
              setDay={setDay}
            ></Day>
          ))}
        </div>
      </div>
    </div>
  );
}
