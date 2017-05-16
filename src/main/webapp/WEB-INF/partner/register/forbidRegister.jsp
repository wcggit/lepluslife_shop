<%--
  Created by IntelliJ IDEA.
  User: wcg
  Date: 2017/5/12
  Time: 下午3:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/commen.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0"/>
  <meta name="viewport" id="viewport" content="width=device-width, initial-scale=1">
  <meta name="format-detection" content="telephone=no">
  <meta name="format-detection" content="telephone=yes"/>
  <meta name="apple-mobile-web-app-capable" content="yes" />
  <meta name="apple-mobile-web-app-status-bar-style" content="black" />
  <title>成为合伙人</title>
  <link rel="stylesheet" href="${leplusShopResource}/partner_register/css/reset.css">
  <link rel="stylesheet" href="${leplusShopResource}/partner_register/css/becomePartner.css">
  <link rel="stylesheet" href="${leplusShopResource}/partner_register/css/swiper.min.css">
</head>
<body>
<div class="${leplusShopResource}/partner_register/headRound">
  <img src="${leplusShopResource}/partner_register/img/round.png" alt="">
</div>
<div id="loader"></div>
<div class="nowCost">
  <p>当前消费金额</p>
  <p><span>￥</span>${current/100.0}</p>
</div>
<div class="up">
  <p>消费满额${limit/100.0}元</p>
  <img src="${leplusShopResource}/partner_register/img/up.png" alt="">
</div>
<div class="down">
  <p>当前消费进度</p>
  <img src="${leplusShopResource}/partner_register/img/down.png" alt="">
</div>
<div class="text fixedClear">
  <div>
    <img src="${leplusShopResource}/partner_register/img/partner.png" alt="">
  </div>
  <div>臻品商城消费满<span>${limit/100.0}元</span>,即可免费成为乐+合伙人</div>
</div>
<div class="swiper-container">
  <div class="swiper-wrapper">
    <div class="swiper-slide">
      <img src="${leplusShopResource}/partner_register/img/can.png" alt="">
    </div>
    <div class="swiper-slide">
      <img src="${leplusShopResource}/partner_register/img/can.png" alt="">
    </div>
    <div class="swiper-slide">
      <img src="${leplusShopResource}/partner_register/img/can.png" alt="">
    </div>
    <div class="swiper-slide">
      <img src="${leplusShopResource}/partner_register/img/can.png" alt="">
    </div>
    <div class="swiper-slide">
      <img src="${leplusShopResource}/partner_register/img/can.png" alt="">
    </div>
  </div>
</div>
<div>
  <div class="button">逛逛商城</div>
</div>
</body>
<script src="${leplusShopResource}/partner_register/js/jquery.min.js"></script>
<script src="${leplusShopResource}/partner_register/js/jquery.percentageloader-0.1.min.js"></script>
<script src="${leplusShopResource}/partner_register/js/swiper.jquery.js"></script>
<script type="text/javascript">
  $(document).ready(function(){
    var $loader;
    var totalKb = ${limit/100.0};
    var kb = 0;
    $loader  = $("#loader").percentageLoader({
                                               width : 160,
                                               height : 160,
                                               progress : 0
                                             });

    var animateFunc = function() {
      if (kb > totalKb) {
        kb = totalKb;
      }
      $loader.setProgress(kb / totalKb);
      $loader.setValue(kb.toString() + 'kb');
      if (kb <${current/100.0}) {
          kb += totalKb/20;
          setTimeout(animateFunc, 5);
      }
    };
    setTimeout(animateFunc, 5);
  });
</script>
<!--滑动-->
<script>
  var swiper = new Swiper('.swiper-container', {
    pagination: '.swiper-pagination',
    effect: 'coverflow',
    initialSlide :2,
    grabCursor: true,
    centeredSlides: true,
    slidesPerView: 'auto',
    coverflow: {
      rotate: 0,
      stretch: 100,
      depth: 200,
      modifier: 1,
      slideShadows : false
    }
  });
</script>
</html>