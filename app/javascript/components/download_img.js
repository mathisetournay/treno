function downloadImg(evt) {
  evt.preventDefault();

  var button = evt.currentTarget;
  if (button.disabled) { return; }

  var imgURL = button.dataset.imgUrl;
  var filename = button.dataset.imgFilename;
  var textOrig = button.text;

  button.disabled = true;
  button.text     = "Downloading";
  button.classList.add('disabled');

  fetch(imgURL)
    .then(function (resp) { return resp.blob(); })
    .then(function (blob) {
      var url = window.URL.createObjectURL(blob);
      var a   = document.createElement('a');

      a.style.display = 'none';
      a.href          = url;
      a.download      = filename;
      document.body.appendChild(a);
      a.click();
      window.URL.revokeObjectURL(url);

      setTimeout(function() {
        button.disabled = false;
        button.text     = textOrig;
        button.classList.remove('disabled');
      }, 800);
    })
    .catch(function () {
      alert("BUG")
    });
}

export const initDownloadImg = () => {
  var imgDownloadLink = document.querySelector('.download-link');

  if (imgDownloadLink) {
    imgDownloadLink.addEventListener("click", downloadImg)
  }
}
