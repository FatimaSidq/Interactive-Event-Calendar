import "./Month.css";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faArrowLeft, faArrowRight } from "@fortawesome/free-solid-svg-icons";

export default function Month(props) {
  return (
    <div className="month">
      <FontAwesomeIcon className="arrow" icon={faArrowLeft} />
      <p>
        {props.month} {props.year}
      </p>
      <FontAwesomeIcon className="arrow" icon={faArrowRight} />
    </div>
  );
}
