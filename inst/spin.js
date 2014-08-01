HTMLWidgets.widget({
  name: "spin",
  type: "output",
  renderValue: function(el, data) {
    new Spinner(data.config).spin(document.getElementById(data.id))
  }
});
