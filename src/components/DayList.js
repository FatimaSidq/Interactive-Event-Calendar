import Day from "./Day";
import "./DayList.css";

export default function DaysList(props) {
  return (
    <div className="day_list">
      <div>
        <h5 className="orange-text">SUN</h5>
        <div>
          {props.days.sunday.map((day) => (
            <Day day={day.day} active={day.active}></Day>
          ))}
        </div>
      </div>
      <div>
        <h5>MON</h5>
        <div>
          {props.days.monday.map((day) => (
            <Day day={day.day} active={day.active}></Day>
          ))}
        </div>
      </div>
      <div>
        <h5>TUE</h5>
        <div>
          {props.days.tuesday.map((day) => (
            <Day day={day.day} active={day.active}></Day>
          ))}
        </div>
      </div>
      <div>
        <h5>WED</h5>
        <div>
          {props.days.wednesday.map((day) => (
            <Day day={day.day} active={day.active}></Day>
          ))}
        </div>
      </div>
      <div>
        <h5>THU</h5>
        <div>
          {props.days.thursday.map((day) => (
            <Day day={day.day} active={day.active}></Day>
          ))}
        </div>
      </div>
      <div>
        <h5>FRI</h5>
        <div>
          {props.days.friday.map((day) => (
            <Day day={day.day} active={day.active}></Day>
          ))}
        </div>
      </div>
      <div>
        <h5 className="orange-text">SAT</h5>
        <div>
          {props.days.saturday.map((day) => (
            <Day day={day.day} active={day.active}></Day>
          ))}
        </div>
      </div>
    </div>
  );
}
