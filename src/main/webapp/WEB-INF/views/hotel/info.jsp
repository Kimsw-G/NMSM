<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- 파비콘 Favicon -->
  <link rel="shortcut icon" href="img/appleFavicon.png">
  <link rel="apple-touch-icon" sizes="180x180" href="img/appleFavicon.png">
  <link rel="icon" sizes="192x192" href="img/androidFavicon.png">
  <!-- 파비콘 Favicon -->
  <title>HotelDetail</title>
  <style>
    /* font */
    @import url('https://fonts.googleapis.com/css?family=Poppins:700');
    @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap');

    @font-face {
      font-family: 'BCcardL';
      src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.1/BCcardL.woff') format('woff');
      font-weight: normal;
      font-style: normal;
    }
    /* font */

    * {
      padding: 0;
      margin: 0;
      box-sizing: border-box;
    }

    body {
      min-height: 100vh;
      background-color: #F9EDD7;
      font-family: "BCcardL", sans-serif;
    }

    ul li {
      list-style: none;
    }

    a {
      text-decoration: none;
    }

    header {
      margin: 50px;
    }

    #gnb {
      display: flex;
      justify-content: space-between;
    }

    #gnb-menu {
      display: flex;
    }
    #gnb ul li {
      font-family: 'Poppins', sans-serif;
      color: white;
      background-color: #FF7606;
      padding: 10px 30px;
      font-size: 1em;
      font-weight: bold;
      border: 0;
      border-radius: 2rem;
      margin-left: 20px;
    }

    #gnb ul li a {
      color: #fff;
    }
    .hotel-detail {
      display: block;
      justify-content: center;
      align-items: center;
      padding: 50px;
    }
    .hotel-name {
      font-weight: 900;
      font-size: 60px;
    }
    .img-slide {
      width: 60%;
    }
    .map {
      width: 40%;
    }
    .hotel-contents {
      display: flex;
    }
    .hotel-article {
      border: none;
      border-radius: 30px;
      background-color: #fff;
      padding: 30px;
      letter-spacing: 2px;
      width: 70%;

    }

    .booking-box {
      border: none;
      background-color: #fff;
      border-radius: 20px;
      margin: 20px;
      padding: 20px;
      width: 30%;

    }
    .image-box {
      display: flex;
    }
    .review-box {
      border: none;
      border-radius: 30px;
      background-color: #fff;
      padding: 30px;
    }
    .hotel-location {
      display: flex;
    }
    .icon-box {
      display: flex;
    }

  </style>
</head>
<body>
<div class="container">
  <header>
    <nav id="gnb">
      <div id="gnb-logo">
        <a href="#"> <!-- 홈 화면 가는 네비게이터-->
          <img src="img/nav_logo.svg" alt="logo" width="100">
        </a>
      </div>

      <ul id="gnb-menu">
        <li><a href="#">ABOUT</a></li>
        <li><a href="#">CONTACT</a></li>
        <li><a href="#">
          <svg width="20" height="20" xmlns="http://www.w3.org/2000/svg" version="1.1" xml:space="preserve">
                            <title>foot-print</title>
            <g>
              <g id="svg_1">
                <path fill="#ffffff" d="m10.11359,14.96222c-0.21784,0.49421 -0.64702,0.77708 -1.21602,0.87462c-0.24711,0.04227 -0.49096,0.00325 -0.73156,-0.06503c-0.65678,-0.17883 -1.01768,-0.51697 -1.49564,-0.97542c-0.22435,-0.21459 -0.4812,-0.39342 -0.79009,-0.4617c-0.2406,-0.05202 -0.48771,-0.08454 -0.73156,-0.1203c-0.47145,-0.06503 -0.69579,-0.09754 -1.164,-0.17883c-0.43243,-0.07153 -0.83886,-0.24711 -1.23878,-0.41943c-0.28937,-0.12681 -0.55924,-0.29263 -0.77383,-0.52672c-0.18208,-0.19834 -0.3544,-0.40642 -0.43569,-0.67303c-0.13331,-0.42918 -0.05202,-0.81935 0.19508,-1.19326c0.41618,-0.64052 0.71205,-1.16725 1.32006,-1.61919c0.77708,-0.57549 1.60619,-1.05345 2.51657,-1.38184c0.55599,-0.20159 1.13148,-0.30563 1.72649,-0.29588c0.4747,0.00651 0.88113,0.18208 1.23227,0.49096c0.41943,0.36741 0.72831,0.8161 0.97867,1.30706c0.66003,1.30706 0.81935,2.63687 0.8161,4.1c-0.00651,0.37066 -0.07153,0.73482 -0.20809,1.13798z" id="svg_2"/>
                <path fill="#ffffff" d="m13.82017,5.85834c-0.15607,0.31538 -0.31864,0.62426 -0.53323,0.90389c-0.51047,0.65678 -1.13798,1.13148 -1.92807,1.33632c-0.32514,0.08454 -0.64052,0.04877 -0.92665,-0.11055c-0.36416,-0.20484 -0.57875,-0.53323 -0.67954,-0.94615c-0.09754,-0.39017 -0.05202,-0.78359 0.08129,-1.164c0.41293,-1.18675 1.20951,-2.00285 2.32799,-2.48081c0.38041,-0.16257 0.78033,-0.20809 1.1705,-0.09104c0.35765,0.1073 0.59825,0.35115 0.71855,0.7153c0.14631,0.44544 0.1138,0.90063 -0.03252,1.35257c-0.05853,0.16257 -0.13331,0.32189 -0.19834,0.48446l0.00001,0z" id="svg_3"/>
                <path fill="#ffffff" d="m9.32676,4.5838c-0.19834,0.51372 -0.48446,0.95916 -0.90389,1.31681c-0.20159,0.17232 -0.43243,0.29588 -0.68279,0.38366c-0.17558,0.05853 -0.3414,0.03577 -0.51372,-0.00651c-0.66978,-0.16582 -1.04044,-0.63727 -1.27454,-1.24853c-0.24385,-0.63402 -0.26987,-1.28755 -0.17558,-1.95083c0.09754,-0.69254 0.33164,-1.33307 0.77058,-1.8858c0.24385,-0.30888 0.53648,-0.55924 0.90063,-0.72181c0.53323,-0.2341 1.09247,-0.12355 1.49239,0.30238c0.30238,0.32189 0.48446,0.7088 0.582,1.13798c0.15607,0.69905 0.14306,1.39484 -0.02926,2.08739c-0.04552,0.19834 -0.1073,0.39017 -0.16582,0.58525l0,0.00002z" id="svg_4"/>
                <path fill="#ffffff" d="m14.62326,10.60862c-0.19183,0.51697 -0.47795,0.96241 -0.88438,1.31356c-0.32839,0.28612 -0.69254,0.48446 -1.09247,0.58525c-0.56899,0.14306 -1.10222,-0.21134 -1.31031,-0.75107c-0.15282,-0.39992 -0.15607,-0.81285 -0.00651,-1.24203c0.31538,-0.89413 0.85512,-1.56392 1.65821,-1.95733c0.31538,-0.15607 0.64702,-0.2406 0.97867,-0.18533c0.40967,0.06828 0.69579,0.31538 0.8161,0.76083c0.10079,0.37391 0.06503,0.75758 -0.04877,1.14124c-0.03577,0.1138 -0.07478,0.22435 -0.11055,0.33489l0.00001,0z" id="svg_5"/>
                <path fill="#ffffff" d="m4.86911,7.2857c-0.1073,0.31213 -0.25361,0.6015 -0.48771,0.84211c-0.33489,0.33489 -0.72506,0.49421 -1.19651,0.37391c-0.3544,-0.09104 -0.66003,-0.27637 -0.90714,-0.54298c-0.63402,-0.67954 -0.89413,-1.50214 -0.88113,-2.41578c0.00651,-0.51047 0.12681,-0.99818 0.34465,-1.45987c0.16907,-0.36416 0.42918,-0.66003 0.78359,-0.86162c0.57224,-0.32839 1.1705,-0.25036 1.67772,0.21134c0.44544,0.40642 0.7023,0.92014 0.84536,1.49564c0.15932,0.63727 0.14631,1.27779 -0.02601,1.91181c-0.04877,0.14631 -0.10405,0.29588 -0.15282,0.44544l-0.00001,0z" id="svg_6"/>
              </g>
            </g>
                        </svg>
        </a></li>
      </ul>
    </nav>
  </header>
  <section>
    <div class="hotel-detail">
      <h1 class="hotel-name">Hotel Name</h1>
      <div class="img-box">
        <img src="img/NM.png" alt="" class="img-slide"> <!--제이쿼리로 슬라이더 이미지 넣을 것  -->
        <img src="img/location.PNG" alt="" class="map">  <!--지도 API  -->
      </div>
      <div class="hotel-contents">
        <div class="hotel-article">
          <h1>HOST 임지영님의 호텔서비스</h1>  <!--호스트 프로필 -->
          <span class="hotel-rating">&star;&star;&star;&star;&star; 5.0</span>
          <div class="hotel-location">
            <img src="img/location-icon.png" alt="" width="20">
            <h4>대구광역시 중구 성내1동</h4>
          </div>
          <img src="img/NM.png" alt="" width="60" height="60" style="border-radius: 50%;"> <!--호스트 프로필 사진 -->
          <p>호텔 설명(간단한 한줄 설명) : Lorem ipsum dolor sit amet consectetur adipisicing elit. </p>
          <br><hr><br>
          <div class="icon-box">
            <div>
              <img src="img/parking.png" alt="" width="60">
              <p>주차가능</p>
            </div>
            <div>
              <img src="img/dog-walking.png" alt="" width="60">
              <p>산책 서비스</p>
            </div>
            <div>
              <img src="img/salon.png" alt="" width="60">
              <p>미용 서비스</p>
            </div>
            <div>
              <img src="img/pick-up.png" alt="" width="60">
              <p>픽업 서비스</p>
            </div>
          </div>
          <br><br>
          <h5>수용 가능한 반려견 20마리</h5>
          <br>
          <p>
            호텔 설명: Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat suscipit iusto impedit dolore cupiditate voluptate aspernatur officiis nemo ex modi! Similique amet natus a tempora beatae ea iure nisi temporibus?
            Lorem ipsum dolor sit, amet consectetur adipisicing elit. Expedita excepturi quisquam, impedit nobis, reiciendis doloremque, assumenda laborum enim iste ipsam ut eaque quaerat nisi nihil. Voluptas nulla saepe totam animi!
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione hic veritatis repellat placeat necessitatibus magni, dolore neque voluptates adipisci facere iste perferendis doloribus. Quidem optio, cupiditate voluptatum ratione animi dolore.
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt quasi, sunt saepe earum explicabo voluptas labore eius optio hic, atque aliquid placeat et! Odit pariatur, ipsa iste nam sit natus!
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Quod, odio unde delectus esse dolore suscipit aspernatur deserunt odit cum, nulla totam a vero iusto! Perferendis, voluptatum expedita. Maiores, beatae molestiae.
            <br><br>
            Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quasi doloribus quam aut ipsum laudantium quos veniam natus fugit, quo quod deserunt, adipisci, est reprehenderit nisi quibusdam ab distinctio consequatur dignissimos!
            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Accusantium debitis ad hic est ipsam molestiae, nemo, necessitatibus ducimus rem impedit totam et vero neque voluptas quisquam, obcaecati aut fugit temporibus.
            Lorem ipsum dolor, sit amet consectetur adipisicing elit. Qui saepe unde quis vitae, inventore distinctio! Suscipit distinctio, animi nisi earum repellendus maxime et voluptate quaerat, atque eaque, cumque illo tenetur?
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic voluptas reprehenderit laudantium, architecto corrupti corporis consectetur quod laboriosam non fugit vel doloribus tenetur temporibus, sequi quisquam adipisci nihil ad! Exercitationem!
          </p>
        </div>
        <div class="booking-box">
          <h1>₩280,889/ 박</h1>
          <div class="booking-option">
            <label for="">체크인<input type="date"></label>
            <label for="">체크아웃<input type="date"></label>
            <label for="">반려견
              <select name="" id="">
                <option value="">1마리</option>
                <option value="">2마리</option>
                <option value="">3마리</option>
                <option value="">4마리</option>
                <option value="">5마리+</option>
              </select>
            </label>
          </div>
          <button type="submit">예약하기</button>
          <hr>
          <h1>₩280,889 X 1박 = ₩280,889</h1>
          <h1>총 합계 ₩280,889</h1>
        </div>
      </div>
      <div class="review-box">
        <h1>&star; 5.0 (후기 100개)</h1>
        <div class="review">
          <img src="img/NM.png" alt="" width="60" height="60" style="border-radius: 50%;"> <!--호스트 프로필 사진 -->
          <h4>host name1</h4>
          <p>date 2021-07-12</p>
          <p>review contents : Lorem ipsum dolor, sit amet consectetur adipisicing elit. Accusantium dolore optio impedit atque. Eius eos voluptatibus soluta enim officiis corporis fuga. Tenetur voluptates minima quidem a, et itaque accusamus est!</p>
        </div>
        <br><hr><br>
        <div class="review-profile">
          <img src="img/NM.png" alt="" width="60" height="60" style="border-radius: 50%;"> <!--호스트 프로필 사진 -->
          <h4>host name2</h4>
          <p>date 2021-07-11</p>
          <p>review contents : Lorem ipsum dolor, sit amet consectetur adipisicing elit. Accusantium dolore optio impedit atque. Eius eos voluptatibus soluta enim officiis corporis fuga. Tenetur voluptates minima quidem a, et itaque accusamus est!</p>
        </div>
        <br><hr><br>
        <div class="review-profile">
          <img src="img/NM.png" alt="" width="60" height="60" style="border-radius: 50%;"> <!--호스트 프로필 사진 -->
          <h4>host name3</h4>
          <p>date 2021-07-10</p>
          <p>review contents : Lorem ipsum dolor, sit amet consectetur adipisicing elit. Accusantium dolore optio impedit atque. Eius eos voluptatibus soluta enim officiis corporis fuga. Tenetur voluptates minima quidem a, et itaque accusamus est!</p>
        </div>
      </div>
    </div>
  </section>
</div>
</body>
</html>