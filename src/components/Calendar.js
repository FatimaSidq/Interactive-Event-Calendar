import DayList from "./DayList";
import Month from "./Month";
import "./Calendar.css";

export default function Calendar(props) {
  const transition = (step) => {
    if (step === "back") {
      if (props.month === 0) {
        props.setState({ ...props.state, month: 11, year: props.year - 1 });
      } else {
        props.setState({
          ...props.state,
          month: props.month - 1,
        });
      }
    } else {
      if (props.month === 11) {
        props.setState({ ...props.state, month: 0, year: props.year + 1 });
      } else {
        props.setState({
          ...props.state,
          month: props.month + 1,
        });
      }
    }
  };

  return (
    <div className="calendar">
      <Month month={props.month} year={props.year} setMonth={transition} />
      <DayList days={props.days} />
    </div>
  );
}
