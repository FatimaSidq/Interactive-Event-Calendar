import Day from "./Day";

export default function DaysList(props) {
  return (
    <div>
      {props.days.map((day) => (
        <Day day={day.day} active={day.active}></Day>
      ))}
    </div>
  );
}
