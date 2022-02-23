const now = new Date();

fetch("https://ip.seeip.org", {
  mode: "cors",
  headers: {
    "Access-Control-Allow-Origin": "*",
  },
}).then((response) => {
  console.log(response);
});

module.exports = {
  day: now.getDate(),
  month: now.getMonth(),
  year: now.getFullYear(),
  temperature: 19,
  town: "Toronto",
  todo: {
    "1-22-2022": [
      {
        complete: true,
        time: "07:00",
        item: "Get d of bed",
      },
      {
        complete: true,
        time: "07:00",
        item: "Get asd of bed",
      },
      {
        complete: false,
        time: "07:00",
        item: "Get out of a",
      },
      {
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
