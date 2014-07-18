return {
  widget : new Spinner(payload.config).spin(document.getElementById(payload.id)),
  payload: payload,
  type : "spin"
};
