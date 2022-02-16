import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faCheck } from "@fortawesome/free-solid-svg-icons";
import classNames from "classnames";
import "./TodoItem.css";

export default function TodoItem(props) {
  return (
    <div className={classNames("todo-item", { complete: props.complete })}>
      <div className="check">
        {props.complete && <FontAwesomeIcon icon={faCheck} />}
      </div>
      <div className="todo-item-info">
        <p>{props.time}</p>
        <p>{props.item}</p>
      </div>
    </div>
  );
}
