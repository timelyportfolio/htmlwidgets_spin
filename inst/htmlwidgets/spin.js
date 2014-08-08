HTMLWidgets.widget({
  name: "spin",
  type: "output",
  renderValue: function(el, data ) {
    //if no config then will be an array []
    //we need {} to use defaults though
    data = data.constructor == Array ? {} : data;
    
    var spin = new Spinner(data);
    spin.el = el.getElementsByClassName(spin.opts.className)[0];
    spin.stop();
    
    spin.spin(el);
  }
});
