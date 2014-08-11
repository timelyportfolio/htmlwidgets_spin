HTMLWidgets.widget({
  name: "spin",
  type: "output",
  renderValue: function(el, data ) {
    //if no config then will be an array []
    //we need {} to use defaults though
    data = data.constructor == Array ? {} : data;
      
    if (typeof el.spin == "undefined") {
      el.spin = new Spinner(data);
    } else {
      el.spin.stop();
      el.spin = new Spinner(data);
    }
    
    el.spin.spin(el)
  }
});
