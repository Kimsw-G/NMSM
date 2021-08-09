<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HotelList</title>
    <!-- 파비콘 Favicon -->
    <link rel="shortcut icon" href="img/appleFavicon.png">
    <link rel="apple-touch-icon" sizes="180x180" href="img/appleFavicon.png">
    <link rel="icon" sizes="192x192" href="img/androidFavicon.png">
    <!-- 파비콘 Favicon -->

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

        .card-box {
            margin: 4rem 5vw;
            padding: 0;
            list-style-type: none;
        }

        .card {
            position: relative;
            display: inline-block;
            width: 500px;
            height: 500px;
            /* border-radius: calc(var(--curve) * 1px); */
            border-radius: 40px;
            overflow: hidden;
            text-decoration: none;
        }

        .card-image {
            width: 500px;
            height: 500px;
        }

        .card-overlay {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            z-index: 1;
            border-radius: calc(var(--curve) * 1px);
            background-color: var(--surface-color);
            transform: translateY(100%);
            transition: .2s ease-in-out;
            background-color: #fff;
        }

        .card:hover .card-overlay {
            transform: translateY(0);
        }

        .card-header {
            position: relative;
            display: flex;
            align-items: center;
            gap: 2em;
            padding: 2em;
            border-radius: calc(var(--curve) * 1px) 0 0 0;
            transform: translateY(-100%);
            transition: .2s ease-in-out;
            background-color: #ffffff;
        }

        .card-arc {
            width: 80px;
            height: 80px;
            position: absolute;
            bottom: 100%;
            right: 0;
            z-index: 1;
        }

        .card-arc path {
            fill: var(#ffffff);
            d: path("M 40 80 c 22 0 40 -22 40 -40 v 40 Z");
        }

        .card:hover .card-header {
            transform: translateY(0);
        }

        .hotel-title {
            font-size: 1em;
            margin: 0 0 .3em;
            color: #6A515E;
        }

        .card-tagline {
            display: block;
            margin: 1em 0;
            font-size: .8em;
        }

        .hotel-rating {
            font-size: .8em;
            color: rgb(249, 105, 2);
        }

        .hotel-description {
            padding: 0 2em 2em;
            margin: 0;
            display: -webkit-box;
            -webkit-box-orient: vertical;
            -webkit-line-clamp: 3;
            overflow: hidden;
        }

        .hotel-rating,.hotel-rating span {
            display:inline-block;
            height:55px;
            overflow:hidden;
            background:url(star.png)no-repeat;
        }

        .hotel-rating span{
            background-position:left bottom;
            line-height:0;
            vertical-align:top;
        }
    </style>
</head>
<body>
<div class="container">
    <header>
        <nav id="gnb">
            <div id="gnb-logo">
                <a href="#">
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
        <div class="search-filter">
            <button type="menu"></button>
        </div>
        <div class="card-box">
            <ul>
                <c:forEach items="${requestScope.list}" var="item">
                    <li class="card">
                        <img src="img/NM.png" class="card-image" alt="" />
                        <div class="card-overlay">
                            <div class="card-header">
                                <svg class="card-arc" xmlns="http://www.w3.org/2000/svg"><path fill="#ffffff" /></svg>
                                <div class="card-header-text">
                                    <h3 class="hotel-name">${item.h_name}</h3>
                                    <!-- like -->
                                    <c:if test="${ not empty sessionScope.loginUser && item.isFav eq 1 }">
                                        <i class="fas fa-kiss-wink-heart"></i>
                                    </c:if>
                                    <span class="hotel-rating">
                                        <span style="width: ${item.h_star * 20}%;"></span>
                                            ${item.h_star}
                                    </span>
                                </div>
                            </div>
                            <img src="img/parking.png" alt="" width="30">
                            <img src="img/pick-up.png" alt="" width="30">
                            <img src="img/salon.png" alt="" width="30">
                            <p class="hotel-description">${item.preDetail}</p>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </section>
</div>
<div>
    <c:forEach begin="1" end="${requestScope.maxPageVal}" var="page">
        <c:choose>
            <c:when test="${(empty param.page && page eq 1) || param.page eq page}">
                <span class="selected">${page}</span>
            </c:when>
            <c:otherwise>
                <span><a href="list?page=${page}&recordCnt=${param.recordCnt == null ? 5 : param.recordCnt}">${page}</a></span>
            </c:otherwise>
        </c:choose>
    </c:forEach>
</div>
</body>
</html>
