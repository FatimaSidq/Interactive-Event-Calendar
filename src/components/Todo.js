import "./Todo.css";
import TodoItem from "./TodoItem";

export default function Todo(props) {
  const onClick = (item) => {
    // props.setState({
    //   ...props.state,
    //   todo: {
    //     ...props.state.todo,
    //     `${props.state.month}-${props.state.day}-${props.state.year}`: [
    //       ...props.state.todo[`${props.state.month}-${props.state.day}-${props.state.year}`],
          
    //     ]
    //   },
    // });
  };

  return (
    <div className="todo">
      <div className="info">
        <h1>{props.temperature}</h1>
        <p>{props.town}</p>
      </div>
      <div className="todo-list">
        {props.todo
          ? props.todo.map((item) => (
              <TodoItem
                complete={item.complete}
                time={item.time}
                item={item.item}
                key={props.todo.indexOf(item)}
                onClick={() => {
                  onClick(item);
                }}
              />
            ))
          : ""}
      </div>
    </div>
  );
}
