import "./Nugget.css";

export default function Nugget(props) {
  return (
    <div
      className="nugget"
      style={{ backgroundImage: `url(${props.backgroundUrl})` }}
    >
      <h1 className="nugget-title">Today's Nugget of Wisdom</h1>
      <p className="nugget-nugget">
        {props.nugget} {props.author ? <span className="nugget-author"> -&nbsp;"{props.author}"</span> : ""}
      </p>
    </div>
  );
}
