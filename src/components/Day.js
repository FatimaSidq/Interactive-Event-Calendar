import classNames from "classnames";
import "./Day.css";

export default function Day(props) {
  return <p className={classNames({active: props.active})}>{props.day}</p>;
}