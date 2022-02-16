import DayList from "./DayList"
import Month from "./Month"
import "./Calendar.css";

export default function Calendar(props) {
  return (
    <div className="calendar">
      <Month month={props.month} year={props.year}/>
      <DayList days={props.days}/>
    </div>
  )
}