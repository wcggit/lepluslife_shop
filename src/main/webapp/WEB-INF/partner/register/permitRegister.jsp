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
  <link rel="stylesheet" href="${leplusShopResource}/partner_register/css/register.css">
  <link rel="stylesheet" href="${leplusShopResource}/partner_register/css/swiper.min.css">
</head>
<style>
  .swiper-slide {
    width: 30%;
    background-color: #eaddca;
    -webkit-border-radius: 5px;
    -moz-border-radius: 5px;
    border-radius: 5px;
  }

  .swiper-slide > p {
    width: 100%;
    text-align: center;
    color: #8f7655;
    font-size: 0.7rem;
    margin: 10% auto;
    margin-top: 15%;
  }

  .swiper-slide > div {
    width: 60%;
    margin: 10% auto;

  }
</style>
<body>
<div class="certificate">
  <img src="${leplusShopResource}/partner_register/img/certificate.png" alt="">
</div>
<div class="promptText fixedClear">
  <div>
    <img src="${leplusShopResource}/partner_register/img/partner.png" alt="">
  </div>
  <div>
    <p>恭喜您！您已获得合伙人注册资格</p>
    <p>臻品商城消费满${limit/100.0}元，即可免费成为乐+合伙人</p>
  </div>
</div>
<div class="swiper-container">
  <div class="swiper-wrapper">
  </div>
</div>
<div>
  <div class="button" onclick="window.location.href='/front/partner/weixin/register'">立即注册</div>
</div>
</body>
<script src="${leplusShopResource}/partner_register/js/jquery.min.js"></script>
<script src="${leplusShopResource}/partner_register/js/swiper.jquery.js"></script>
<!--滑动-->
<script>
  $.get("/shop/productList?typeId=0&page=0", function (res) {
    res = res.data
    var s = ""
    for (var i = 0; i < 5; i++) {
      s +=
      "<div class='swiper-slide' onclick='window.location.href=\"/front/product/weixin/"
      + res[i].id + "\"'><p>" + res[i].name+
      "</p><div><img height='70' src='" + res[i].thumb + "'></div></div>"
    }
    $("#productList").html(s)
    var swiper = new Swiper('.swiper-container', {
      pagination: '.swiper-pagination',
      effect: 'coverflow',
      initialSlide: 2,
      grabCursor: true,
      centeredSlides: true,
      slidesPerView: 'auto',
      coverflow: {
        rotate: 0,
        stretch: 100,
        depth: 200,
        modifier: 1,
        slideShadows: false
      }
    });
  })
</script>
</html>
