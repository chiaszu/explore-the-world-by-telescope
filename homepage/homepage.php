<!DOCTYPE html>
<html>

<head>
  <title>Explore World By Telescope</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta charset="UTF-8">

  <link href="https://fonts.googleapis.com/css2?family=Fredericka+the+Great&family=Merriweather:wght@300;400;700&display=swap" rel="stylesheet" />
  <link href="test1.css" rel="stylesheet">
  <link href="test2.css" rel="stylesheet">
  <link href="..\menu\menu.css" rel="stylesheet">
  <link href="contact.css" rel="stylesheet" />

  <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <script src="test2.js" type="text/javascript"></script>
  <script src="test3.js" type="text/javascript"></script>
  <script src="..\menu\menu.js" type="text/javascript"></script>


</head>

<body>
  <section id="section1">
    <div id="explore">
      <p id="Telescope">Explore World By Telescope</p>
    </div>
    <div id="circle_div">
      <img class="image" src="world4.svg">
      <div id="insideshadow"></div>

    </div>
    <a href="#othersection">
      <!-- <img id = "todown"src="todown.svg"> -->
      <img id="todown" src="down-chevron.png">
    </a>




  </section>

  <?php include '../menu/menu.php'; ?>

  <section id="othersection" style="display:none; overflow:hidden;">
    <p class="beensofartext" style="padding-top:5vw;">Latest Post</p>
    <div id="special_post">
      <div><a href="..\project\hokkaido.php">
          <img src=".\homepageimg\lp1.jpg">
          <div>
            <h2>Hokkaido</h2>
            <p>Japan's northern island is known for its stunning wilderness, world class powder snow, delicious...</p>
          </div>
        </a>
      </div>
      <div><a href="..\project\bath.php">
          <img src=".\homepageimg\lp4.jpg">
          <div>
            <h2>Bath</h2>
            <p>Originally, I thought the piles of the stones would be gigantic; however, it did not turned out as what...</p>
          </div>
        </a>
      </div>
      <div><a href="..\project\london.php">
          <img src=".\homepageimg\lp2.jpg">
          <div>
            <h2>London</h2>
            <p>I enjoy the chilling vibe with my friends while strolling along the Thames. The sky becomes...</p>
          </div>
        </a>
      </div>
      <div id="lastpost"><a href="..\project\greenwich.php">
          <img src=".\homepageimg\lp3.jpg">
          <div>
            <h2>Greenwich</h2>
            <p>When I arrived at Greenwich, it feels like entering another world under different time zone...</p>
          </div>
        </a>
      </div>

    </div>
    <a href="..\readmore\readmore.php">
      <p id="readmore">Read More<p>
    </a>
    <div id="beensofarouter">
      <p class="beensofartext">Been So Far...</p>
      <div class="beensofar">
        <div class="beendivs"><a id="been1link"><img id="been1" class="beenimgs" src=".\homepageimg\country1.jpeg">
            <p id="been1text" class="beentextonimg">United Kingdom</p>
          </a></div>
        <div class="beendivl"><a id="been2link"><img id="been2" class="beenimgl" src=".\homepageimg\country2.jpg">
            <p id="been2text" class="beentextonimg">Germany</p>
          </a></div>
        <div class="beendivs"><a id="been3link"><img id="been3" class="beenimgs" src=".\homepageimg\country3.jpg">
            <p id="been3text" class="beentextonimg">Taiwan</p>
          </a></div>
        <div class="beendivs"><a id="been4link"><img id="been4" class="beenimgs" src=".\homepageimg\country4.jpg">
            <p id="been4text" class="beentextonimg">Japan</p>
          </a></div>
        <div class="beendivs"><a id="been5link"><img id="been5" class="beenimgs" src=".\homepageimg\other.jpeg">
            <p id="been5text" class="beentextonimg">To Be Continue</p>
          </a></div>
      </div>
    </div>

    <div class="contact_container">
      <div id="glass">
        <div class="author_container">
          <div id="v">
            <img src="./victoria.png" alt="" />
            <p>Victoria</p>
          </div>
          <div id="w">
            <img src="./wendy.png" alt="" />
            <p>Wendy</p>
          </div>
          <div id="n">
            <img src="./nina.png" alt="" />
            <p>Nina</p>
          </div>
        </div>
        <div class="message_container">
          <h3>Contact Us</h3>
          <form action="">
            <input type="text" placeholder="NAME" />
            <input type="email" placeholder="EMAIL" />
            <input type="text" placeholder="Write a message..." />
            <pre></pre>
            <input type="submit" value="Send!" />
          </form>
        </div>
      </div>
    </div>
  </section>
  <footer>
    <p>Explore World By Telescope</p>
  </footer>

</body>

</html>
