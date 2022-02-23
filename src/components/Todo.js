import "./Todo.css";
import TodoItem from "./TodoItem";
import findTodoItemById from "../helpers/findTodoItemById";

export default function Todo(props) {
  const onClick = (id) => {
    const day = `${props.state.month}-${props.state.day}-${props.state.year}`;
    const item = findTodoItemById(props.state, day, id);

    const modifiedTodo = { ...props.state.todo };
    modifiedTodo[day] = [...props.state.todo[day]];
    modifiedTodo[day][item].complete = !modifiedTodo[day][item].complete

    props.setState({
      ...props.state,
      todo: modifiedTodo,
    });
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
                key={item.id}
                id={item.id}
                onClick={onClick}
              />
            ))
          : ""}
      </div>
    </div>
  );
}
