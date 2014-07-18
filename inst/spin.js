var htmlWidgets = typeof(htmlWidgets) == "undefined" ? {} : htmlWidgets;

htmlWidgets["payload-id"] = new Spinner(payload.config).spin(document.getElementById(payload.id));