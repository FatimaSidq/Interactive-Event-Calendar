import DaysList from "./DaysList"
import Month from "./Month"
import "./Calendar.css";

export default function Calendar(props) {
  return (
    <div className="calendar">
      <Month month={props.month} year={props.year}></Month>
      <DaysList days={props.days}></DaysList>
    </div>
  )
}