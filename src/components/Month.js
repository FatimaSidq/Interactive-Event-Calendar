import "./Month.css";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faArrowLeft, faArrowRight } from "@fortawesome/free-solid-svg-icons";

export default function Month(props) {
  const months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];

  // console.log(new Date(props.year, props.month, 0).getDate());

  return (
    <div className="month">
      <FontAwesomeIcon className="arrow" icon={faArrowLeft} onClick={() => props.setMonth("back")} />
      <p>
        {months[props.month]} {props.year}
      </p>
      <FontAwesomeIcon className="arrow" icon={faArrowRight} onClick={() => props.setMonth("forward")} />
    </div>
  );
}
