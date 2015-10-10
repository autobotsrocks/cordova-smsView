var SmsView = function() {
};

SmsView.prototype.open = function(message, addresses) {
  message = message || '';
  addresses = addresses || [];
  return cordova.exec(null, null, 'SmsView', 'open', [addresses, message]);
};

module.exports = new SmsView();