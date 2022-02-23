const now = new Date();

module.exports = {
  day: now.getDate(),
  month: now.getMonth(),
  year: now.getFullYear(),
  temperature: 19,
  town: "Toronto",
  todo: {
    "1-22-2022": [
      {
        id: 1,
        complete: true,
        time: "07:00",
        item: "Get d of bed",
      },
      {
        id: 2,
        complete: true,
        time: "07:00",
        item: "Get asd of bed",
      },
      {
        id: 3,
        complete: false,
        time: "07:00",
        item: "Get out of a",
      },
      {
        id: 4,
        complete: false,
        time: "07:00",
        item: "Get x of bed",
      },
    ],
  },
  nugget: "Be Happy",
  backgroundUrl:
    "https://raw.githubusercontent.com/FatimaSidq/Interactive-Event-Calendar/database/public/images/sunrise.jpeg",
  author: "Stella Maris",
};
