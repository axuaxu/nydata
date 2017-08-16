var ourRequest = new XMLHttpRequest();
var yearUrl = 'https://data.ny.gov/resource/cdhq-buk7.json?$select=distinct(year_admitted)&status=%27Currently%20registered%27&$order=year_admitted%20DESC';
ourRequest.open('GET', yearUrl);
//ourRequest.open('GET', './pets-data.json');
ourRequest.onload = function() {
  if (ourRequest.status >= 200 && ourRequest.status < 400) {
    var data = JSON.parse(ourRequest.responseText);
    createHTML(data);
  } else {
    console.log("We connected to the server, but it returned an error.");
  }
};

ourRequest.onerror = function() {
  console.log("Connection error");
};

ourRequest.send();



function createHTML(iData) {
  var rawTemplate = document.getElementById("yearTemplate").innerHTML;
  var compiledTemplate = Handlebars.compile(rawTemplate);
  var ourGeneratedHTML = compiledTemplate(iData);

  var dContainer = document.getElementById("d-container");
  dContainer.innerHTML = ourGeneratedHTML;
}