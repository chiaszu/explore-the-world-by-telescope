$(document).ready(function () {
  const ids = [
    "#coverPic",
    "#section1_pic",
    "#section2_pic1",
    "#section2_pic2",
    "#section2_pic3",
    "#section3_pic",
    "#end_pic",
  ];
  ids.forEach((element) => {
    $(element)[0].onchange = (evt) => {
      evt.target.nextElementSibling.src = URL.createObjectURL(
        evt.target.files[0]
      );
    };
  });
});
