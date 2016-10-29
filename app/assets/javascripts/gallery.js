(function() {
  $(document).on("ready", function() {
    init();
  });
  var init = function() {
    facebookSocialPlugin();
    ScrollToSearch();
  }
  var facebookSocialPlugin = function() {
    (function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.8&appId=327066234317115";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
  }
  var ScrollToSearch = function() {
    if (getParameterByName('author') != null) {
      $('html,body').animate({
        scrollTop: $("#vnu-search").offset().top},
        'slow');
    }
  }
  var getParameterByName = function(name, url) {
    if (!url) {
      url = window.location.href;
    }
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
  }
}).call(this);