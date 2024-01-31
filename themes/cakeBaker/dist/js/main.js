document.addEventListener("DOMContentLoaded", (event) => {
  console.log("DOM fully loaded and parsed");
 /*
  const asyncAutocomplete = document.querySelector('#async');
const asyncFilter = async (query) => {
  const url = `https://swapi.py4e.com/api/people/?search=${encodeURI(query)}`;
  const response = await fetch(url);
  const data = await response.json();
  return data.results;
};

new mdb.Autocomplete(asyncAutocomplete, {
  filter: asyncFilter,
  displayValue: (value) => value.name
});
*/
let stackCount = 0;


document.getElementById('stacking-trigger').addEventListener('click', () =>{
  stackCount++;

  const toast = document.createElement('div');
  toast.innerHTML = `
  <div class="toast-header">
    <strong class="me-auto">${stackCount}</strong>
    <small>11 mins ago</small>
    <button type="button" class="btn-close" data-mdb-dismiss="toast" aria-label="Close"></button>
  </div>
  <div class="toast-body">
    Stacking element
  </div>
  `;

  toast.classList.add('toast', 'fade');

  document.body.appendChild(toast);

  const toastInstance = new mdb.Toast(toast, {
    stacking: true,
    hidden: true,
    width: '450px',
    position: 'top-right',
    autohide: false,
    delay: 5000,
  });

  toastInstance.show();
});
});
