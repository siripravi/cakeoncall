document.addEventListener("DOMContentLoaded", (event) => {
  console.log("DOM fully loaded and parsed");
/*const basicAutocomplete = document.querySelector('#search-autocomplete');
const data = ['One', 'Two', 'Three', 'Four', 'Five'];
const dataFilter = (value) => {
return data.filter((item) => {
  return item.toLowerCase().startsWith(value.toLowerCase());
});
};

new mdb.Autocomplete(basicAutocomplete, {
filter: dataFilter
});*/

const asyncAutocomplete = document.querySelector('#async');
const asyncFilter = async (query) => {
  const url = `https://swapi.py4e.com/api/people/?search=${encodeURI(query)}`;
  const response = await fetch(url);
  const data = await response.json();
  return data.results;
};
/*
new mdb.Autocomplete(asyncAutocomplete, {
  filter: asyncFilter,
  displayValue: (value) => value.name
});*/
});