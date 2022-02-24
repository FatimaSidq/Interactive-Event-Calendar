import "./Nugget.css";

export default function Nugget(props) {
  const now = new Date();

  return (
    <div
      className="nugget"
      style={{ backgroundImage: `url(${props.backgroundUrl})` }}
    >
      <h1 className="nugget-title">
        {props.day === now.getDate() &&
        props.month === now.getMonth() &&
        props.year === now.getFullYear()
          ? "Today's Nugget of Wisdom"
          : "Daily Nugget of Wisdom"}
      </h1>
      <p className="nugget-nugget">
        "{props.nugget}"{" "}
        {props.author ? (
          <span className="nugget-author"> -&nbsp;{props.author}</span>
        ) : (
          ""
        )}
      </p>
    </div>
  );
}
