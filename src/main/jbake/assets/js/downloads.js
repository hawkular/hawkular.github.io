function getFileSize(size)
{
  return Math.round(size/1024/1024) + "MB";
}

function getTriagedAssets(assets) {
  var triagedAssets = {};

  $.each( assets, function( ) {
     if (this.name.indexOf("-dist-") >= 0  && this.name.indexOf("zip") >= 0)
     {
        triagedAssets['distZip'] = this;
     }
     else if (this.name.indexOf("-dist-") >= 0 && (this.name.indexOf("tar") >= 0 || this.name.indexOf("tar.gz") >= 0|| this.name.indexOf("tgz") >= 0))
     {
       triagedAssets['distTgz'] = this;
     }
     else
     {
       if (!triagedAssets['otherAssets']) triagedAssets['otherAssets'] = [];
       triagedAssets['otherAssets'].push(this);
     }
  })
  return triagedAssets;
}

function getOlderReleasesText(githubRelease) {

  var triagedAssets = getTriagedAssets(githubRelease.assets);

  olderReleaseText = "<table class=\"table table-striped table-bordered\">";
  olderReleaseText += "<thead><tr><th>" + githubRelease.name + " - " + moment(githubRelease.published_at).format("MMM Do YYYY");

  var distZipAsset = triagedAssets['distZip'];
  if (distZipAsset) {
    olderReleaseText += " - <a href=\"" + distZipAsset.browser_download_url + "\">ZIP (" + getFileSize(distZipAsset.size) + ")</a>";
  }

  var distTgzAsset = triagedAssets['distTgz'];
  if (distTgzAsset) {
    olderReleaseText += " - <a href=\"" + distTgzAsset.browser_download_url + "\">TGZ (" + getFileSize(distTgzAsset.size) + ")</a>";
  }

  olderReleaseText += " - <a href=\"https://github.com/hawkular/hawkular/tree/" + githubRelease.tag_name + "\">GitHub</a>";

  olderReleaseText += "</th></tr></thead>";
  olderReleaseText += "<tbody>";

  if (triagedAssets['otherAssets']) {
    olderReleaseText += "<tr><td>Other files:</a><ul>"
    $.each( triagedAssets['otherAssets'], function( ) {
      olderReleaseText += "<li><a href=\"" + this.browser_download_url + "\">" + this.name + " (" + getFileSize(this.size) + ")</a></li>";
    });
    olderReleaseText += "</ul></th></tr>";
  }


  olderReleaseText += "</tbody></table>";

  return olderReleaseText;
}

function getReleaseText(githubRelease) {

  var triagedAssets = getTriagedAssets(githubRelease.assets);

  var releaseText = "<h3>Current Version (" + githubRelease.name + " - " + moment(githubRelease.published_at).format("MMM Do YYYY") + ")</h3>";
  releaseText += "<div class=\"row download-buttons\">";
  if (triagedAssets['distZip']) {
    releaseText += "<div class=\"col-sm-6\">";
    releaseText += "<a class=\"btn btn-default btn-lg full-width\" href=\"" + triagedAssets['distZip'].browser_download_url + "\">";
    releaseText += "<i class=\"fa fa-download\"></i> Binary.zip <span>(" + getFileSize(triagedAssets['distZip'].size) + ") </span>";
    releaseText += "</a>";
    releaseText += "</div>";
  }
  if (triagedAssets['distTgz']) {
    releaseText += "<div class=\"col-sm-6\">";
    releaseText += "<a class=\"btn btn-default btn-lg full-width\" href=\"" + triagedAssets['distTgz'].browser_download_url + "\">";
    releaseText += "<i class=\"fa fa-download\"></i> Binary.tgz <span>(" + getFileSize(triagedAssets['distTgz'].size) + ") </span>";
    releaseText += "</a>";
    releaseText += "</div>";
  }
  releaseText += "</div>";
  if (triagedAssets['otherAssets']) {
    releaseText += "<div>Other files:";
    $.each( triagedAssets['otherAssets'], function( ) {
      releaseText += "&nbsp;<a href=\"" + this.browser_download_url + "\">" + this.name + " (" + getFileSize(this.size) + ")</a>";
    });
    releaseText += "</div>";
  }


  return releaseText;
}
