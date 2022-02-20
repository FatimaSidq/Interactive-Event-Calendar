import classNames from "classnames";
import "./Day.css";

export default function Day(props) {
  return <p className={classNames("day", {active: props.active, today: props.today})}>{props.day}</p>;
}