import "./NewTodoItem.css";

export default function NewTodoItem(props) {
  const submit = (event) => {
    event.preventDefault();
    props.newTodo(event.target[0].value, event.target[1].value);
    event.target.reset();
  };

  return (
    <form
      onSubmit={(event) => {
        submit(event);
      }}
    >
      <input
        name="todo-time"
        placeholder="02:00"
        className="new-todo-input"
      ></input>
      <input
        name="todo-item"
        placeholder="Eat cake"
        className="new-todo-input"
      ></input>
      <button className="add" type="submit">
        +
      </button>
    </form>
  );
}
