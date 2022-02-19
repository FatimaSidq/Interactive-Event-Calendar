import "./Todo.css";
import TodoItem from "./TodoItem";

export default function Todo(props) {
  
  return (
    <div className="todo">
      <div className="info">
        <h1>{props.temperature}</h1>
        <p>{props.town}</p>
      </div>
      <div className="todo-list">
        {/* {props.todo.map(item => <TodoItem complete={item.complete} time={item.time} item={item.item} key={props.todo.indexOf(item)}/>)} */}
      </div>
    </div>
  );
}
