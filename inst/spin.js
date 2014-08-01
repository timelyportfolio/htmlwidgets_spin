HTMLWidgets.widget({
  name: "spin",
  type: "output",
  renderValue: function(el, data) {
    return new Spinner(data.config).spin(document.getElementById(data.id))
  }
});
