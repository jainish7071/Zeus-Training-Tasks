document.addEventListener("DOMContentLoaded", () => {
  document.addEventListener("mousemove", (e) => {
    var burger = document.getElementById("burger");
    var absoluteDiv = document.getElementsByClassName("absoluteDiv")[0];
    var annoucementIcon = document.getElementsByClassName("notice")[0];
    var announcementDiv = document.getElementsByClassName("announcementDiv")[0];
    var alertDiv = document.getElementsByClassName("alertDiv")[0];
    var alertIcon = document.getElementsByClassName("notification")[0];
    if (e.path.includes(burger) || e.path.includes(absoluteDiv)) {
      absoluteDiv.style = "display: grid;";
    } else {
      absoluteDiv.style = "display : none";
    }
    if (e.path.includes(annoucementIcon) || e.path.includes(announcementDiv)) {
      announcementDiv.style = "display:flex";
    } else {
      announcementDiv.style = "display:none";
    }
    if (e.path.includes(alertDiv) || e.path.includes(alertIcon)) {
      alertDiv.style = "display:flex;";
    } else {
      alertDiv.style = "display:none;";
    }
  });
  // document.getElementById("burger").addEventListener("mouseover", () => {
  //   document.getElementsByClassName("absoluteDiv")[0].style = "display:grid;";
  // });
  // document.getElementById("burger").addEventListener("mouseout", () => {
  //   document.getElementsByClassName("absoluteDiv")[0].addEventListener("mouseover", () => {
  //     document.getElementsByClassName("absoluteDiv")[0].style = "display:grid;";
  //   });
  //   document.getElementsByClassName("absoluteDiv")[0].addEventListener("mouseout", () => {
  //     document.getElementsByClassName("absoluteDiv")[0].style = "display:none;";
  //   });
  // });
  // document.getElementsByClassName("notice")[0].addEventListener("mouseover", () => {
  //   document.getElementsByClassName("announcementDiv")[0].style = "display : flex;";
  // });
  // document.getElementsByClassName("notice")[0].addEventListener("mouseout", () => {
  //   document.getElementsByClassName("announcementDiv")[0].addEventListener("mouseover", () => {
  //     document.getElementsByClassName("announcementDiv")[0].style = "display:flex;";
  //   });
  //   document.getElementsByClassName("announcementDiv")[0].addEventListener("mouseout", () => {
  //     document.getElementsByClassName("announcementDiv")[0].style = "display:none;";
  //   });
  // });
  // document.addEventListener("mousemove", (e) => {
  //   var burger = document.getElementById("burger");
  //   var absoluteDiv = document.getElementsByClassName("absoluteDiv")[0];
  //   console.log(e.path.includes(burger) || e.path.includes(absoluteDiv));
  // });
});
