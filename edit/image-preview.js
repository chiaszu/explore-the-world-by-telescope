$(document).ready(function () {
  const ids = [
    "#coverPic",
    "#section1_pic",
    "#section2_pic1",
    "#section2_pic2",
    "#section2_pic3",
    "#section3_pic",
    "#end_pic",
  ]
  ids.forEach((element) => {
    $(element)[0].onchange = (evt) => {
      const imgObj = evt.target.nextElementSibling
      const file   = evt.target.files[0]
      // check the file size limit
      if (file.size > 4500000) {
        alert('The image must be smaller than 4.5 MB')
        evt.target.value = ''
        return
      }

      imgObj.src = URL.createObjectURL(file)
      imgObj.onload = () => {
        /* ########## compress image ########## */
        const cvs  = document.createElement('canvas')
        cvs.width  = imgObj.naturalWidth
        cvs.height = imgObj.naturalHeight
        cvs.getContext('2d').drawImage(imgObj, 0, 0)

        // the last param can be 0 to 10, the higher the better quality but larger
        fetch(cvs.toDataURL('image/webp', 0.5)).then(img => {
          img.blob().then(blob => {
            const compressedFile = new File(
              [ blob ],
              `${file.name}.webp`,
              { type: 'image/webp' }
            )

            // make a filelist and change the input.files
            const container = new DataTransfer();
            container.items.add(compressedFile);
            evt.target.files = container.files;
          })
        })
      }
    }
  })
})
