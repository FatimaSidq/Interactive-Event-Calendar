const now = new Date();

module.exports = {
  day: now.getDate(),
  month: now.getMonth(),
  year: now.getFullYear(),
  temperature: "-4°",
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
  },
  nugget: "Your time is limited, so don't waste it living someone else's life",
  backgroundUrl:
    "https://raw.githubusercontent.com/FatimaSidq/Interactive-Event-Calendar/database/public/images/sunrise.jpeg",
  author: "Steve Jobs",
};
