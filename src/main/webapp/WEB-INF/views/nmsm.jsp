<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.js"></script>
<!-- datapicker -->

<script type="application/javascript" href="/js/hostCalendar.js" defer></script>
<link rel="stylesheet" href="/css/hostCalendar.css" />
<%--  <link rel="stylesheet" href="/css/nmsm.css"/>--%>
<%--  <link rel="stylesheet" href="/css/header.css"/>--%>


<div class="wrap">
  <div class="container title">
    <div class="row">
      <div class="col-md-4">
        <h2 class="sub-title-1">반려견을 위한</h2>
        <div class="bar"></div>
      </div>
      <div class="col-md-8"></div>
    </div>
    <div class="row">
      <div class="col-md"></div>
      <div class="col-md">
        <h1 class="sub-title-2 tracking-in-expand">호캉스</h1>
      </div>
    </div>
  </div>


  <section>
    <div class="form-book container px-1 px-sm-5 mx-auto">
      <form autocomplete="off" action="/hotel/list" method="post">
        <div class="input-group flex-row d-flex justify-content-center">
          <div class="col input-daterange">
            <label
                    class="ml-3 form-control-placeholder"
                    id="start-p"
                    for="start"
            >체크인
              <span class="fa fa-calendar" id="fa-1"></span>
              <input
                      type="text"
                      id="start"
                      name="checkIN"
                      class="form-control text-left mr-2"
                      placeholder="From"/>
            </label><!-- Generator: Adobe Illustrator 24.0.1, SVG Export Plug-In  -->
<%--            <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"--%>
<%--                 width="1034.04px" height="443.5px" viewBox="0 0 1034.04 443.5" style="enable-background:new 0 0 1034.04 443.5;"--%>
<%--                 xml:space="preserve">--%>
<%--<style type="text/css">--%>
<%--  .st0{fill:#FFFFFF;}--%>
<%--  .st1{fill:#B5B5F4;}--%>
<%--  .st2{fill:#929292;}--%>
<%--</style>--%>
<%--              <defs>--%>
<%--              </defs>--%>
<%--              <g id="rfvMgW_2_">--%>
<%--                <g>--%>
<%--                </g>--%>
<%--              </g>--%>
<%--                <path class="st1" d="M985.01,302.5H398.08c-26.97,0-49.03-22.06-49.03-49.03l10-118.94c0-26.97,22.06-49.03,49.03-49.03h566.94--%>
<%--                <g>--%>
<%--                    <path d="M322.95,443.5c-11.65,0-23.26,0-34.87,0"/>--%>
<%--                <path d="M288.08,0c11.61,0,23.23,0,34.87,0"/>--%>
<%--                <path d="M65.87,204.55c12.17-26.32,23.31-50.76,34.83-75.01c1.65-3.46,5.12-6.06,7.76-9.06c2.09,4.26,5.82,8.49,5.87,12.77--%>
<%--				c0.07,6.28-1.65,12.93-4.09,18.81c-9.82,23.61-20.38,46.9-30.19,70.51c-1.46,3.51-1.25,8.36-0.18,12.12--%>
<%--				c1.56,5.51,3.7,11.34,7.24,15.69c4.49,5.52,10.29,10.18,16.18,14.26c3.8,2.63,9.04,3.08,13.17,5.35--%>
<%--				c13.51,7.41,18.64,20.82,13.7,34.71c-4.77,13.43-18.15,21.5-31.4,18.95c-15.6-3.01-25.29-13.65-23.63-29.61--%>
<%--				c1.55-14.91,0.21-28.18-9.4-40.05c-8.83,11.78-10.61,24.49-8.89,38.77c1.75,14.58-6.14,24.9-19.2,28.97--%>
<%--				c-12.21,3.8-25.99-0.93-32.52-11.16c-7.34-11.5-6.98-26.03,2.36-34.91c4.99-4.74,11.72-8.36,18.3-10.6--%>
<%--				c21.5-7.32,31.6-30.01,22.42-50.77c-9.51-21.51-18.78-43.14-27.31-65.05c-2.48-6.38-2.65-13.91-2.6-20.9--%>
<%--				c0.02-2.43,3.87-4.84,5.97-7.25c1.98,2,4.71,3.65,5.83,6.05C41.83,152.14,53.31,177.26,65.87,204.55z M102.56,279.28--%>
<%--				c-8.77,0.21-15.89,7.74-15.76,16.67c0.12,8.98,7.34,16.1,16.3,16.06c9.31-0.04,16.88-7.92,16.43-17.1--%>
<%--				C119.11,286.24,111.32,279.06,102.56,279.28z M12.9,294.35c-0.21,9.08,6.54,16.57,15.34,17.04c8.84,0.47,17.25-7.58,17.26-16.51--%>
<%--				c0.01-8.61-7.61-16.34-16.2-16.43C20.31,278.36,13.11,285.34,12.9,294.35z M65.56,220.21c-2.75,4.17-5.92,6.87-5.69,9.25--%>
<%--				c0.22,2.36,3.86,4.4,5.99,6.58c2.22-2.41,5.78-4.6,6.22-7.29C72.42,226.73,68.69,224.07,65.56,220.21z"/>--%>
<%--                <path class="st0" d="M102.56,279.28c8.76-0.21,16.55,6.96,16.97,15.63c0.44,9.18-7.13,17.06-16.43,17.1--%>
<%--				c-8.96,0.04-16.18-7.07-16.3-16.06C86.67,287.01,93.79,279.49,102.56,279.28z"/>--%>
<%--                <path class="st0" d="M12.9,294.35c0.21-9.01,7.41-15.99,16.4-15.9c8.59,0.09,16.21,7.81,16.2,16.43--%>
<%--				c-0.01,8.94-8.42,16.98-17.26,16.51C19.44,310.92,12.69,303.42,12.9,294.35z"/>--%>
<%--                <path class="st0" d="M65.56,220.21c3.13,3.86,6.85,6.53,6.53,8.53c-0.44,2.7-4,4.89-6.22,7.29c-2.14-2.18-5.77-4.22-5.99-6.58--%>
<%--				C59.65,227.08,62.82,224.38,65.56,220.21z"/>--%>
<%--                c26.97,0,49.03,22.06,49.03,49.03l10,118.94C1034.04,280.44,1011.98,302.5,985.01,302.5z"/>--%>
<%--                </g>--%>
<%--                <g>--%>
<%--              </g>--%>
<%--                <g>--%>
<%--                    <path d="M435.04,62.5c0-6.6-5.4-12-12-12h-3c-6.6,0-12,5.4-12,12v164h27V62.5z"/>--%>
<%--                    <path class="st2" d="M948.04,62.5c0-6.6-5.4-12-12-12h-3c-6.6,0-12,5.4-12,12v164h27V62.5z"/>--%>
<%--              </g>--%>
<%--              <g>--%>
<%--                <path class="st2" d="M462.04,62.5c0-6.6-5.4-12-12-12h-3c-6.6,0-12,5.4-12,12v164h27V62.5z"/>--%>
<%--              </g>--%>
<%--              <g>--%>
<%--                <path d="M489.04,96.05c0-5.25-5.4-9.55-12-9.55h-3c-6.6,0-12,4.3-12,9.55V226.5h27V96.05z"/>--%>
<%--              </g>--%>
<%--              <g>--%>
<%--                <path class="st2" d="M516.04,62.5c0-6.6-5.4-12-12-12h-3c-6.6,0-12,5.4-12,12v164h27V62.5z"/>--%>
<%--              </g>--%>
<%--              <g>--%>
<%--                <path d="M543.04,96.05c0-5.25-5.4-9.55-12-9.55h-3c-6.6,0-12,4.3-12,9.55V226.5h27V96.05z"/>--%>
<%--              </g>--%>
<%--              <g>--%>
<%--                <path class="st2" d="M570.04,62.5c0-6.6-5.4-12-12-12h-3c-6.6,0-12,5.4-12,12v164h27V62.5z"/>--%>
<%--              </g>--%>
<%--              <g>--%>
<%--                <path d="M597.04,96.05c0-5.25-5.4-9.55-12-9.55h-3c-6.6,0-12,4.3-12,9.55V226.5h27V96.05z"/>--%>
<%--              </g>--%>
<%--              <g>--%>
<%--                <path class="st2" d="M624.04,62.5c0-6.6-5.4-12-12-12h-3c-6.6,0-12,5.4-12,12v164h27V62.5z"/>--%>
<%--              </g>--%>
<%--              <g>--%>
<%--                <path d="M651.04,96.05c0-5.25-5.4-9.55-12-9.55h-3c-6.6,0-12,4.3-12,9.55V226.5h27V96.05z"/>--%>
<%--              </g>--%>
<%--              <g>--%>
<%--                <path class="st2" d="M678.04,62.5c0-6.6-5.4-12-12-12h-3c-6.6,0-12,5.4-12,12v164h27V62.5z"/>--%>
<%--              </g>--%>
<%--              <g>--%>
<%--                <path d="M705.04,96.05c0-5.25-5.4-9.55-12-9.55h-3c-6.6,0-12,4.3-12,9.55V226.5h27V96.05z"/>--%>
<%--              </g>--%>
<%--              <g>--%>
<%--                <path class="st2" d="M732.04,62.5c0-6.6-5.4-12-12-12h-3c-6.6,0-12,5.4-12,12v164h27V62.5z"/>--%>
<%--              </g>--%>
<%--              <g>--%>
<%--                <path d="M759.04,96.05c0-5.25-5.4-9.55-12-9.55h-3c-6.6,0-12,4.3-12,9.55V226.5h27V96.05z"/>--%>
<%--              </g>--%>
<%--              <g>--%>
<%--                <path class="st2" d="M786.04,62.5c0-6.6-5.4-12-12-12h-3c-6.6,0-12,5.4-12,12v164h27V62.5z"/>--%>
<%--              </g>--%>
<%--              <g>--%>
<%--                <path d="M813.04,96.05c0-5.25-5.4-9.55-12-9.55h-3c-6.6,0-12,4.3-12,9.55V226.5h27V96.05z"/>--%>
<%--              </g>--%>
<%--              <g>--%>
<%--                <path class="st2" d="M840.04,62.5c0-6.6-5.4-12-12-12h-3c-6.6,0-12,5.4-12,12v164h27V62.5z"/>--%>
<%--              </g>--%>
<%--              <g>--%>
<%--                <path d="M867.04,96.05c0-5.25-5.4-9.55-12-9.55h-3c-6.6,0-12,4.3-12,9.55V226.5h27V96.05z"/>--%>
<%--              </g>--%>
<%--              <g>--%>
<%--                <path class="st2" d="M894.04,62.5c0-6.6-5.4-12-12-12h-3c-6.6,0-12,5.4-12,12v164h27V62.5z"/>--%>
<%--              </g>--%>
<%--              <g>--%>
<%--                <path d="M975.04,62.5c0-6.6-5.4-12-12-12h-3c-6.6,0-12,5.4-12,12v164h27V62.5z"/>--%>
<%--              </g>--%>
<%--              <g>--%>
<%--                <path d="M921.04,96.05c0-5.25-5.4-9.55-12-9.55h-3c-6.6,0-12,4.3-12,9.55V226.5h27V96.05z"/>--%>
<%--              </g>--%>
<%--</svg>--%>

          </div>
          <div class="col input-daterange">
            <label
                    class="ml-3 form-control-placeholder"
                    id="end-p"
                    for="end"
            >체크아웃
              <span class="fa fa-calendar" id="fa-2"></span>
              <input
                      type="text"
                      id="end"
                      name="checkOUT"
                      class="form-control text-left ml-2"
                      placeholder="To"/>
            </label>
          </div>
          <div class="col">
            <label
            >위치
              <div>
                <select name="hLocation">
                <c:forEach var="loc" items="${locs}">
                  <option value="${loc.loc_code}">${loc.loc_name}</option>
                </c:forEach>
                </select>
              </div>
            </label>
          </div>
          <div class="col">
            <label
            >반려견
              <input type="number" placeholder="마리 수" name="bookDogNum" min="1" >
            </label>
          </div>
          <div class="col">
            <button><i class="fas fa-search fa-1.2x"></i></button>
          </div>
        </div>
      </form>
    </div>
  </section>
</div>