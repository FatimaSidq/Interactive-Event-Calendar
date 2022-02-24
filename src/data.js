export default async function data() {
  const now = new Date();

  const request = await fetch("http://localhost:3001/");
  const response = await request.json();
  const getDayOfYear = (date) =>
    (Date.UTC(date.getFullYear(), date.getMonth(), date.getDate()) -
      Date.UTC(date.getFullYear(), 0, 0)) /
    24 /
    60 /
    60 /
    1000;

  const nugget = response.rows[getDayOfYear(now)];
  return {
    day: now.getDate(),
    month: now.getMonth(),
    year: now.getFullYear(),
    temperature: "-5°",
    town: "Toronto",
    todo: {
      "1-22-2022": [
        {
          id: 1,
          complete: true,
          time: "07:00",
          item: "Get out of bed",
        },
        {
          id: 2,
          complete: true,
          time: "07:30",
          item: "Eat breakfast",
        },
        {
          id: 3,
          complete: false,
          time: "08:00",
          item: "Go to the gym",
        },
      ],
      "1-24-2022": [
        {
          id: 1,
          complete: true,
          time: "14:35",
          item: "Stress about demo day",
        },
        {
          id: 2,
          complete: false,
          time: "05:00",
          item: "Celebrate",
        }
      ],
    },
    nugget: nugget.nugget_of_wisdom,
    backgroundUrl:
      "https://github.com/FatimaSidq/Interactive-Event-Calendar/blob/main/public/images/oats-field.jpeg?raw=true",
    author: nugget.quote_by,
  };
}
