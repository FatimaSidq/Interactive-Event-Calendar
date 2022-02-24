import classNames from "classnames";
import "./Day.css";

export default function Day(props) {
  return props.day !== " " ? (
    <p
      onClick={() => {
        props.setDay(props.day);
      }}
      className={classNames("day", {
        active: props.active,
        today: props.today,
      })}
    >
      {props.day}
    </p>
  ) : (
    <div className="spacer"></div>
  );
}
