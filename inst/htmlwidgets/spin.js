HTMLWidgets.widget({
  name: "spin",
  type: "output",
  renderValue: function(el, data) {
    //thanks http://stackoverflow.com/questions/3955229/remove-all-child-elements-of-a-dom-node-in-javascript
    var removeChilds = function (node) {
      var last;
      while (last = node.lastChild) node.removeChild(last);
    };
    removeChilds(el);
    return new Spinner(data).spin(el);
    //el.appendChild(spinner.el)
  }
});
