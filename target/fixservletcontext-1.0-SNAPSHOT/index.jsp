<%@ page import="java.util.LinkedList" %>
<%@ page import="java.util.Deque" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         isELIgnored="false"
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% response.addHeader("Content-Type", "text/html;charset=UTF-8"); %>

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Lab 2</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/form.css">
    <link rel="stylesheet" href="css/graphics.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/results.css">
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/ClickProcessing.js"></script>
    <script src="js/ErrorsDisplay.js"></script>
    <script src="js/Validator.js"></script>
    <script src="js/Buttons.js"></script>
</head>
<body>
<div class="header">
    <p>Дагиль Герман P3233</p>
    <p>Лабораторная работа №2</p>
    <p>33187</p>
</div>
<table>
    <tr id="content">
        <td class="image container">
<%--            <svg id="graph" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"--%>
<%--                 width="336px" height="336px" viewBox="-0.5 -0.5 336 336"--%>
<%--                 content="&lt;mxfile host=&quot;drawio-plugin&quot; modified=&quot;2021-11-10T11:47:01.839Z&quot; agent=&quot;5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36&quot; etag=&quot;9yVqkx34ClALXC017yao&quot; version=&quot;14.7.4&quot; type=&quot;embed&quot;&gt;&lt;diagram id=&quot;23iRSUPoRavnBvh4doch&quot; name=&quot;Page-1&quot;&gt;5Zhdb4MgFIZ/jfcCWu3l1nXbzZIlvdg1UaYkKAbph/v1w4GfbOlq0zZtbxp4PecFzkOaow5aZLsXgYv0jceEOdCNdw56ciD0YKh+a6HSApi7WkgEjY3UCSv6RYzYhK1pTEqtGUlyziQtykF2xPOcRHKgYSH4dhj2ydlw1QInxBJWEWa2+kFjmWo1hEGnvxKapM3KYDbXTzLcBJttlymO+bYnoaWDFoJzqUfZbkFYXbumLjrv+Y+n7cYEyeV/EjydsMFsbc5m9iWr5rAkjx/qmqlZxHBZ0shBj6nMmBKAGuoEElsl6/YA2pOpG0F4RqSoVMi2q51v6pH2ytZogjAs6WZojw3CpLVrV3jnVC0MXXPboGt8zGWDoTu0KPlaRMRk9Ws1MvLhHiOJRUKkZaQGvWN30g+K37H4t48FzYbV9LyJWMZGAJ4MCwAHccl5Tq4LiodGV3w+EYplFPwPiiodrnphRR1QHosN3jg2f/wXNxWbZXRRbOjGsbWYjsVmGV0U22E9xRViG/cBk7GNjS6K7bCe4/qwIX9UbTC14Qj2GJ0V2+zOsIHJfWKwx+is2II7w9bOj8VmGZ0VW3hn2Lzxy9RUbJbRCbGpafcFRYd3n6HQ8hs=&lt;/diagram&gt;&lt;/mxfile&gt;"><defs/><g><path d="M 7 167 L 320.63 167" fill="none" stroke="#000000" stroke-miterlimit="10" pointer-events="stroke"/><path d="M 325.88 167 L 318.88 170.5 L 320.63 167 L 318.88 163.5 Z" fill="#000000" stroke="#000000" stroke-miterlimit="10" pointer-events="all"/><path d="M 167 327 L 167 13.37" fill="none" stroke="#000000" stroke-miterlimit="10" pointer-events="stroke"/><path d="M 167 8.12 L 170.5 15.12 L 167 13.37 L 163.5 15.12 Z" fill="#000000" stroke="#000000" stroke-miterlimit="10" pointer-events="all"/><path d="M 237 177 L 237 157" fill="none" stroke="#000000" stroke-miterlimit="10" pointer-events="stroke"/><path d="M 307 177 L 307 157" fill="none" stroke="#000000" stroke-miterlimit="10" pointer-events="stroke"/><path d="M 97 177 L 97 157" fill="none" stroke="#000000" stroke-miterlimit="10" pointer-events="stroke"/><path d="M 27 177 L 27 157" fill="none" stroke="#000000" stroke-miterlimit="10" pointer-events="stroke"/><path d="M 157 97 L 177 97" fill="none" stroke="#000000" stroke-miterlimit="10" pointer-events="stroke"/><path d="M 157 27 L 177 27" fill="none" stroke="#000000" stroke-miterlimit="10" pointer-events="stroke"/><path d="M 157 237 L 177 237" fill="none" stroke="#000000" stroke-miterlimit="10" pointer-events="stroke"/><path d="M 157 307 L 177 307" fill="none" stroke="#000000" stroke-miterlimit="10" pointer-events="stroke"/>--%>
<%--                &lt;%&ndash;%>
<%--                    Object maybeList= session.getAttribute("shots");--%>
<%--                    String circleFormat = "<circle cx=\"%s\" cy=\"%s\" r=\"4\" fill=\"%s\" stroke=\"black\" stroke-width=\"2\"/>";--%>
<%--                    if (maybeList instanceof List && ((List) maybeList).size() > 0--%>
<%--                            && ((List) maybeList).get(0) instanceof ShotBean) {--%>
<%--                        List<ShotBean> list = (List<ShotBean>) maybeList;--%>
<%--                        for (int i = list.size() - 1; i >= 0; i--) {--%>
<%--                            ShotBean bean = list.get(i);--%>
<%--                            int x = 208 + (int)((bean.getX() / bean.getR()) * 160);--%>
<%--                            int y = 210 + (int)((-bean.getY() / bean.getR()) * 160);--%>
<%--                            out.println(String.format(circleFormat, x, y, (bean.isSuccess() ? "red" : "gray")));--%>
<%--                        }--%>
<%--                    }--%>
<%--                %>--%>
<%--            </svg>--%>
            <svg id="graph" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                 width="300px" height="300px" viewBox="-0.5 -0.5 420 440"
                 content="&lt;mxfile host=&quot;drawio-plugin&quot; modified=&quot;2021-11-10T12:57:40.041Z&quot; agent=&quot;5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36&quot; etag=&quot;1OtYQIpLnx6mp56eXEBF&quot; version=&quot;14.7.4&quot; type=&quot;embed&quot;&gt;&lt;diagram id=&quot;s14Ict8x1Yt2QIKXxBq_&quot; name=&quot;Page-1&quot;&gt;7VtLc+MoEP41PjoloYftY+LJPKomtdnNVu3MaQtLRKYiCS3GsbO/fpFAL4Rj2SvLij0Xl2iggf666QbaI2sebb9QmCwfiI/CETD87cj6NAIAOBb/TQlvgmCakhBQ7EtSSXjC/yJJNCR1jX20qjVkhIQMJ3WiR+IYeaxGg5SSTb3ZMwnroyYwQA3CkwfDJvUv7LOloE7BpKR/RThY5iOb7kzURDBvLFeyWkKfbCok635kzSkhTHxF2zkKU9nlchH9Pu+oLSZGUczadLh37n73ovnXsUE85+FvsHigv41tV7B5heFarljOlr3lInhFlGEuke9wgcJHssIMk5hXLQhjJBpZd3mD2xAHaQUjCacuWRTygsk/+dKTlFm0DVIluVnAFfZuEozSOgYpu42DbDTjBjimMzPtmWtNge3YpsOboNgvGziG6RoTZ2IapuNMJil7Staxj9JlGmIwIees8IKYt8wLjJKXAkaQ9WRQrmY8S5s84zCck5DQbOmWNV14rld0rdQAMDGnfMi7JgwSmVQqaFshSVi+IBIhRt94k9xIplJFpI0AW5Y3pcbxRQvasqptORFKLQ8K3qUi8A+pCwfohWXs14u62DdLzNBTAr20dsNhVlSgIfvziNqoi9oCLUU9PZWkwWy/pAv7gfEaht/iZM1aSFzspelqFKNQ7KVqIgtCfUTHmwpOkuRJQBYh9F44OUEUcwkgms4Ax4FsPRScW5jUtE+Yzf0op9tc6rF4yQvhim+R+0xop6CQX/NqTTFVxOBoxJDTKAr5/vha94U62cgRHgnmMylQKCxJtbacxYqsqYdkr6rvUhg5+xhxJxIg1mCUQVUs+38Y6TWiZylCd45FT2Vk9oyedRB6MYnRe9DZHwE6R5G4Gii0hm6yh9GJoXOuHjrb6Ai6BqMTQ9fiZHHp0KnRxNHQqYxODN306qArfFseYFjHRioqI7Nf6PLhrgi7xpnuWOwajPrGTheouGF61lvwj4BlYAjCM8lmXqLq/rMmecVYnP1ueQPTTbZlJSc8i/NiSfsTLkkEq23ESD/zofhaxGj1GXByZVaKivFjGqvrFZSXQx7XIkQ1t0YR9v20u/ZcWz+y7tTI9gfERoSUY13RWVujs2ro2t0B0T4Y/BZQHq4gYqQf3YJfP+vLTad6MSBJA1MSR1ES3W1Rv0oyOYWSiH5/XLS9O8reDmZnhhLoHPUwofyg1tu4dnDODbnuErA7yD+Di7Zg9VAErHPDeXi49gvOAk4bDG1D3h2AdRpvAV28dXBY3wOXQrnGeo17VzlXCYwrNBilShQvVkm9q9LsPY7FyKpt7J/SxXo4ZUu0zm5DuvvajrZEroXGZceojWu/ybnh1N3h/toSr2JLHJhtAHdo4cIJj+KXv9WZan5Gj3ACDXCH35DrEld2vfErF+Ua2Q3m7vzYN3414eaEGRq6OP1a8VPvOI5/Le4vw6abN/3LwM+2O7K/HvHTukOdNzwc1I/07NiA7thnxwaj0z07doNSLZvzbu7OG/hlWdtbzH6MRMq2K8s/ZXkqy5+2MqTICm+VwmOeXlqLOfYbMl9LJvZ3VFXkvA8lSaSBdnuLN2uMinipJ4vvxg1/JItXoWtI/Nj8nhNC120qD3h3Dxi6s93rIwcY7GpNr8VfBi7M9BoSPzrHR2XUmbPlxfLPXKJ5+Y846/4/&lt;/diagram&gt;&lt;/mxfile&gt;"><defs/><g><path d="M 208 210 L 288 210.8 C 287.78 232.02 279.15 252.28 264 267.13 C 248.84 281.99 228.41 290.21 207.19 290 Z" fill="#38bc6c" stroke="#22718d" stroke-width="2" stroke-miterlimit="10" transform="rotate(-90,208,210)" pointer-events="all"/><rect x="48" y="210" width="160" height="80" fill="#38bc6c" stroke="#22718d" stroke-width="2" pointer-events="all"/><path d="M 128 210 L 128 210 L 208 130 L 208 210 Z" fill="#38bc6c" stroke="#22718d" stroke-width="2" stroke-miterlimit="10" pointer-events="all"/><path d="M 8 210 L 399.76 210" fill="none" stroke="#000000" stroke-width="2" stroke-miterlimit="10" pointer-events="stroke"/><path d="M 405.76 210 L 397.76 214 L 399.76 210 L 397.76 206 Z" fill="#000000" stroke="#000000" stroke-width="2" stroke-miterlimit="10" pointer-events="all"/><path d="M 208 410 L 208 18.24" fill="none" stroke="#000000" stroke-width="2" stroke-miterlimit="10" pointer-events="stroke"/><path d="M 208 12.24 L 212 20.24 L 208 18.24 L 204 20.24 Z" fill="#000000" stroke="#000000" stroke-width="2" stroke-miterlimit="10" pointer-events="all"/><path d="M 198 50 L 218 50" fill="none" stroke="#000000" stroke-width="4" stroke-miterlimit="10" pointer-events="stroke"/><path d="M 198 290 L 218 290" fill="none" stroke="#000000" stroke-width="4" stroke-miterlimit="10" pointer-events="stroke"/><path d="M 198 370 L 218 370" fill="none" stroke="#000000" stroke-width="4" stroke-miterlimit="10" pointer-events="stroke"/><path d="M 368 220 L 368 200" fill="none" stroke="#000000" stroke-width="4" stroke-miterlimit="10" pointer-events="stroke"/><path d="M 48 220 L 48 200" fill="none" stroke="#000000" stroke-width="4" stroke-miterlimit="10" pointer-events="stroke"/><rect x="198" y="0" width="40" height="20" fill="none" stroke="none" pointer-events="all"/><g transform="translate(-0.5 -0.5)"><switch><foreignObject style="overflow: visible; text-align: left;" pointer-events="none" width="100%" height="100%" requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"><div xmlns="http://www.w3.org/1999/xhtml" style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 38px; height: 1px; padding-top: 10px; margin-left: 199px;"><div style="box-sizing: border-box; font-size: 0; text-align: center; "><div style="display: inline-block; font-size: 12px; font-family: Helvetica; color: #000000; line-height: 1.2; pointer-events: all; white-space: normal; word-wrap: normal; "><b><font style="font-size: 16px" face="Tahoma">Y</font></b></div></div></div></foreignObject><text x="218" y="14" fill="#000000" font-family="Helvetica" font-size="12px" text-anchor="middle">Y</text></switch></g><rect x="398" y="210" width="40" height="20" fill="none" stroke="none" pointer-events="all"/><g transform="translate(-0.5 -0.5)"><switch><foreignObject style="overflow: visible; text-align: left;" pointer-events="none" width="100%" height="100%" requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"><div xmlns="http://www.w3.org/1999/xhtml" style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 38px; height: 1px; padding-top: 220px; margin-left: 399px;"><div style="box-sizing: border-box; font-size: 0; text-align: center; "><div style="display: inline-block; font-size: 12px; font-family: Helvetica; color: #000000; line-height: 1.2; pointer-events: all; white-space: normal; word-wrap: normal; "><b><font face="Tahoma" style="font-size: 16px">X</font></b></div></div></div></foreignObject><text x="418" y="224" fill="#000000" font-family="Helvetica" font-size="12px" text-anchor="middle">X</text></switch></g><rect x="348" y="180" width="40" height="20" fill="none" stroke="none" pointer-events="all"/><g transform="translate(-0.5 -0.5)"><switch><foreignObject style="overflow: visible; text-align: left;" pointer-events="none" width="100%" height="100%" requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"><div xmlns="http://www.w3.org/1999/xhtml" style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 38px; height: 1px; padding-top: 190px; margin-left: 349px;"><div style="box-sizing: border-box; font-size: 0; text-align: center; "><div style="display: inline-block; font-size: 12px; font-family: Helvetica; color: #000000; line-height: 1.2; pointer-events: all; white-space: normal; word-wrap: normal; "><b><font face="Tahoma">R</font></b></div></div></div></foreignObject><text x="368" y="194" fill="#000000" font-family="Helvetica" font-size="12px" text-anchor="middle">R</text></switch></g><rect x="208" y="40" width="40" height="20" fill="none" stroke="none" pointer-events="all"/><g transform="translate(-0.5 -0.5)"><switch><foreignObject style="overflow: visible; text-align: left;" pointer-events="none" width="100%" height="100%" requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"><div xmlns="http://www.w3.org/1999/xhtml" style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 38px; height: 1px; padding-top: 50px; margin-left: 209px;"><div style="box-sizing: border-box; font-size: 0; text-align: center; "><div style="display: inline-block; font-size: 12px; font-family: Helvetica; color: #000000; line-height: 1.2; pointer-events: all; white-space: normal; word-wrap: normal; "><b><font face="Tahoma">R</font></b></div></div></div></foreignObject><text x="228" y="54" fill="#000000" font-family="Helvetica" font-size="12px" text-anchor="middle">R</text></switch></g><rect x="218" y="120" width="40" height="20" fill="none" stroke="none" pointer-events="all"/><g transform="translate(-0.5 -0.5)"><switch><foreignObject style="overflow: visible; text-align: left;" pointer-events="none" width="100%" height="100%" requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"><div xmlns="http://www.w3.org/1999/xhtml" style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 38px; height: 1px; padding-top: 130px; margin-left: 219px;"><div style="box-sizing: border-box; font-size: 0; text-align: center; "><div style="display: inline-block; font-size: 12px; font-family: Helvetica; color: #000000; line-height: 1.2; pointer-events: all; white-space: normal; word-wrap: normal; "><b><font face="Tahoma">R/2</font></b></div></div></div></foreignObject><text x="238" y="134" fill="#000000" font-family="Helvetica" font-size="12px" text-anchor="middle">R/2</text></switch></g><rect x="268" y="180" width="40" height="20" fill="none" stroke="none" pointer-events="all"/><g transform="translate(-0.5 -0.5)"><switch><foreignObject style="overflow: visible; text-align: left;" pointer-events="none" width="100%" height="100%" requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"><div xmlns="http://www.w3.org/1999/xhtml" style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 38px; height: 1px; padding-top: 190px; margin-left: 269px;"><div style="box-sizing: border-box; font-size: 0; text-align: center; "><div style="display: inline-block; font-size: 12px; font-family: Helvetica; color: #000000; line-height: 1.2; pointer-events: all; white-space: normal; word-wrap: normal; "><b><font face="Tahoma">R/2</font></b></div></div></div></foreignObject><text x="288" y="194" fill="#000000" font-family="Helvetica" font-size="12px" text-anchor="middle">R/2</text></switch></g><rect x="218" y="280" width="40" height="20" fill="none" stroke="none" pointer-events="all"/><g transform="translate(-0.5 -0.5)"><switch><foreignObject style="overflow: visible; text-align: left;" pointer-events="none" width="100%" height="100%" requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"><div xmlns="http://www.w3.org/1999/xhtml" style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 38px; height: 1px; padding-top: 290px; margin-left: 219px;"><div style="box-sizing: border-box; font-size: 0; text-align: center; "><div style="display: inline-block; font-size: 12px; font-family: Helvetica; color: #000000; line-height: 1.2; pointer-events: all; white-space: normal; word-wrap: normal; "><font face="Tahoma" style="font-size: 12px"><font style="font-size: 12px"><font style="font-size: 12px"><b>-</b></font><span> </span></font><b>R/2</b></font></div></div></div></foreignObject><text x="238" y="294" fill="#000000" font-family="Helvetica" font-size="12px" text-anchor="middle">- R/2</text></switch></g><rect x="218" y="360" width="40" height="20" fill="none" stroke="none" pointer-events="all"/><g transform="translate(-0.5 -0.5)"><switch><foreignObject style="overflow: visible; text-align: left;" pointer-events="none" width="100%" height="100%" requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"><div xmlns="http://www.w3.org/1999/xhtml" style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 38px; height: 1px; padding-top: 370px; margin-left: 219px;"><div style="box-sizing: border-box; font-size: 0; text-align: center; "><div style="display: inline-block; font-size: 12px; font-family: Helvetica; color: #000000; line-height: 1.2; pointer-events: all; white-space: normal; word-wrap: normal; "><b><font face="Tahoma">- R</font></b></div></div></div></foreignObject><text x="238" y="374" fill="#000000" font-family="Helvetica" font-size="12px" text-anchor="middle">- R</text></switch></g><rect x="108" y="180" width="40" height="20" fill="none" stroke="none" pointer-events="all"/><g transform="translate(-0.5 -0.5)"><switch><foreignObject style="overflow: visible; text-align: left;" pointer-events="none" width="100%" height="100%" requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"><div xmlns="http://www.w3.org/1999/xhtml" style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 38px; height: 1px; padding-top: 190px; margin-left: 109px;"><div style="box-sizing: border-box; font-size: 0; text-align: center; "><div style="display: inline-block; font-size: 12px; font-family: Helvetica; color: #000000; line-height: 1.2; pointer-events: all; white-space: normal; word-wrap: normal; "><font face="Tahoma" style="font-size: 12px"><font style="font-size: 12px"><font style="font-size: 12px"><b>-</b></font><span> </span></font><b>R/2</b></font></div></div></div></foreignObject><text x="128" y="194" fill="#000000" font-family="Helvetica" font-size="12px" text-anchor="middle">- R/2</text></switch></g><rect x="28" y="180" width="40" height="20" fill="none" stroke="none" pointer-events="all"/><g transform="translate(-0.5 -0.5)"><switch><foreignObject style="overflow: visible; text-align: left;" pointer-events="none" width="100%" height="100%" requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"><div xmlns="http://www.w3.org/1999/xhtml" style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 38px; height: 1px; padding-top: 190px; margin-left: 29px;"><div style="box-sizing: border-box; font-size: 0; text-align: center; "><div style="display: inline-block; font-size: 12px; font-family: Helvetica; color: #000000; line-height: 1.2; pointer-events: all; white-space: normal; word-wrap: normal; "><b><font face="Tahoma">- R</font></b></div></div></div></foreignObject><text x="48" y="194" fill="#000000" font-family="Helvetica" font-size="12px" text-anchor="middle">- R</text></switch></g><path d="M 48 210 L 128 210" fill="none" stroke="#22718d" stroke-width="2" stroke-miterlimit="10" pointer-events="stroke"/><path d="M 208 290 L 208 210" fill="none" stroke="#22718d" stroke-width="2" stroke-miterlimit="10" pointer-events="stroke"/><path d="M 288 210 L 208 210" fill="none" stroke="#22718d" stroke-width="2" stroke-miterlimit="10" pointer-events="stroke"/><path d="M 288 220 L 288 200" fill="none" stroke="#000000" stroke-width="4" stroke-miterlimit="10" pointer-events="stroke"/><path d="M 209.28 209.04 L 209 130" fill="none" stroke="#38bc6c" stroke-width="5" stroke-miterlimit="10" pointer-events="stroke"/><path d="M 198 130 L 218 130" fill="none" stroke="#000000" stroke-width="4" stroke-miterlimit="10" pointer-events="stroke"/><path d="M 208 210 L 128 210" fill="none" stroke="#38bc6c" stroke-width="2" stroke-miterlimit="10" pointer-events="stroke"/><path d="M 128 220 L 128 200" fill="none" stroke="#000000" stroke-width="4" stroke-miterlimit="10" pointer-events="stroke"/></g><switch><g requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"/><a transform="translate(0,-5)" xlink:href="https://www.diagrams.net/doc/faq/svg-export-text-problems" target="_blank"><text text-anchor="middle" font-size="10px" x="50%" y="100%">Viewer does not support full SVG 1.1</text></a></switch>
                <%
                    ServletContext servletContext = request.getServletContext();
                    String circleFormat = "<circle cx=\"%s\" cy=\"%s\" r=\"4\" fill=\"%s\" stroke=\"black\" stroke-width=\"2\"/>";
                    LinkedList<String> answer;
                    if (servletContext.getAttribute("answer") != null) {
                        float x_serv = (float) servletContext.getAttribute("x");
                        float y_serv = (float) servletContext.getAttribute("y");
                        int r = (int) servletContext.getAttribute("r");

                        int x = 208 + (int)((x_serv/r) * 160);
                        int y = 210 + (int)((-y_serv / r) * 160);
                        String color = "#FF1801";
                        String message = (String)servletContext.getAttribute("message");
                        if (message == "hit")
                            color = "#226990";
                        out.println(String.format(circleFormat, x, y, color));
                        System.out.println(x);
                        System.out.println(y);
                    }
                %>
            </svg>
        </td>
        <td class="form container">
            <p>Параметры</p>
            <form method="post" action="./controller" name="MainForm">
                <div id="x_value" class="field">
                    X:
                    <button value="-5" class="x_buttons" type="button" id="x05">-5</button>
                    <button value="-4" class="x_buttons" type="button" id="x04">-4</button>
                    <button value="-3" class="x_buttons" type="button" id="x03">-3</button>
                    <button value="-2" class="x_buttons" type="button" id="x02">-2</button>
                    <button value="-1" class="x_buttons" type="button" id="x01">-1</button>
                    <button value="0" class="x_buttons" type="button" id="x0">0</button>
                    <button value="1" class="x_buttons" type="button" id="x1">1</button>
                    <button value="2" class="x_buttons" type="button" id="x2">2</button>
                    <button value="3" class="x_buttons" type="button" id="x3">3</button>
                    <%--                    <div class="radio_block">--%>
<%--                        -2 <br>--%>
<%--                        <label>--%>
<%--                            <input id="-2.0X" class="radio" type="radio" name="X" value="-2">--%>
<%--                        </label>--%>
<%--                    </div>--%>
<%--                    <div class="radio_block">--%>
<%--                        -1.5 <br>--%>
<%--                        <label>--%>
<%--                            <input id="-1.5X" class="radio" type="radio" name="X" value="-1.5">--%>
<%--                        </label>--%>
<%--                    </div>--%>
<%--                    <div class="radio_block">--%>
<%--                        -1 <br>--%>
<%--                        <label>--%>
<%--                            <input id="-1.0X" class="radio" type="radio" name="X" value="-1">--%>
<%--                        </label>--%>
<%--                    </div>--%>
<%--                    <div class="radio_block">--%>
<%--                        -0.5 <br>--%>
<%--                        <label>--%>
<%--                            <input id="-0.5X" class="radio" type="radio" name="X" value="-0.5">--%>
<%--                        </label>--%>
<%--                    </div>--%>
<%--                    <div class="radio_block">--%>
<%--                        0 <br>--%>
<%--                        <label>--%>
<%--                            <input id="0.0X" class="radio" type="radio" name="X" value="0">--%>
<%--                        </label>--%>
<%--                    </div>--%>
<%--                    <div class="radio_block">--%>
<%--                        0.5 <br>--%>
<%--                        <label>--%>
<%--                            <input id="0.5X" class="radio" type="radio" name="X" value="0.5">--%>
<%--                        </label>--%>
<%--                        </div>--%>
<%--                    <div class="radio_block">--%>
<%--                        1 <br>--%>
<%--                        <label>--%>
<%--                            <input id="1.0X" class="radio" type="radio" name="X" value="1">--%>
<%--                        </label>--%>
<%--                    </div>--%>
<%--                    <div class="radio_block">--%>
<%--                        1.5 <br>--%>
<%--                        <label>--%>
<%--                            <input id="1.5X" class="radio" type="radio" name="X" value="1.5">--%>
<%--                        </label>--%>
<%--                    </div>--%>
<%--                    <div class="radio_block">--%>
<%--                        2 <br>--%>
<%--                        <label>--%>
<%--                            <input id="2.0X" class="radio" type="radio" name="X" value="2">--%>
<%--                        </label>--%>
<%--                    </div>--%>
                </div>
                <div id="y_value" class="field">
                    Y:
                    <label>
                        <input id="y-field" class="text-field" type="text" name="Y-field" autocomplete="off" maxlength="17">
                    </label>
                </div>
                <div id="r_value" class="field">
                    R:
                    <button value="1" class="x_buttons" type="button" id="r1">1</button>
                    <button value="2" class="x_buttons" type="button" id="r2">2</button>
                    <button value="3" class="x_buttons" type="button" id="r3">3</button>
                    <button value="4" class="x_buttons" type="button" id="r4">4</button>
                    <button value="5" class="x_buttons" type="button" id="r5">5</button>

                </div>

                <input type="hidden" name="X" id="hidden-x">
                <input type="hidden" name="Y" id="hidden-y">
                <input id="time-offset" name="time-offset" type="hidden">
<%--                <input id="submit-button" type="submit">--%>
                <button class="x_buttons" id="submit-button" type="submit">SUBMIT</button>
            </form>
        </td>
    </tr>
    <tr class="errors">
        <td class="errors" colspan="2">
            <p id="errorDisplay"></p>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <table id="results">
                <tr>
                    <th>X</th>
                    <th>Y</th>
                    <th>R</th>
                    <th>Время обращения</th>
                    <th>Время исполнения, мс</th>
                    <th>Результат</th>
                </tr>
                <%
                    servletContext = request.getServletContext();
                    if(servletContext.getAttribute("answer") != null) {
                        answer = (LinkedList<String>) servletContext.getAttribute("answer");
                        for (String s : answer) {
                            System.out.println(s);
                            out.println(s);
                        }
                    }
                %>
            </table>
        </td>
    </tr>
</table>
</body>
</html>