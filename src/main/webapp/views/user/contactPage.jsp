<%-- 
    Document   : ContactPage
    Created on : Aug 15, 2023, 10:11:44 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="icon" href="./Image/cr7.jpg">
    <style>
        .content {
            height: 316px;
            width: 100%;
            background-image: url(${pageContext.request.contextPath}/Image/backgound_login.jpg);
            background-size: cover;

        }

        .text {
            color: black;
            position: absolute;
            top: 10px;
            left: 70px;
            /*z-index: 3;*/
        }

        .text h1 {
            margin-top: 200px;
            margin-left: 600px;
        }

        .text h5 {
            margin-left: 621px;
        }

        .quality_box {
            display: flex;
            justify-content: space-between;
            background-color: #FAF3EA;
        }


        #contact {
            width: 500px;
            margin:2em auto;
            background:white;
            position: relative;
        }
        #contact::after {
            content: "";
            display: block;
            height: 30px;
            width: 90%;
            left: 5%;
            bottom: 0;
            position: absolute;
            -webkit-box-shadow: 0 5px 15px 0 rgba(0, 0, 0, 0.19);
            box-shadow: 0 5px 15px 0 rgba(0, 0, 0, 0.19);
            border-radius: 100%;
            z-index: -1;
        }
        #contact article {
            padding: 1em;
        }
        #contact h1 {
            background: #B88E2F;
            font-family: Oswald ,sans-serif;
            font-size: 1.75em;
            padding: 0.6em 0 0.6em 0.4em;
            color: white;
            text-shadow: 0 0.06em 0 #424242;
            position: relative;
        }
        .contactbutton {
            background: #B88E2F;
            -webkit-box-shadow: 1px 1px 0 0 #832032,2px 2px 0 0 #832032,3px 3px 0 0 #832032;
            box-shadow: 1px 1px 0 0 #832032,2px 2px 0 0 #832032,3px 3px 0 0 #832032;
            text-align: center;
            display: block;
            width: 100%;
            height: 50px;
            margin-top: 20px;
            margin-bottom: 2px;
            cursor: pointer;
        }
        .contactbutton:hover {
            -webkit-box-shadow: 1px 1px 0 0 #832032,0px 0px 0 0 #832032,0px 0px 0 0 #832032;
            box-shadow: 1px 1px 0 0 #832032,0px 0px 0 0 #832032,0px 0px 0 0 #832032;
            margin-top: 22px;
            margin-left: 2px;
            margin-bottom: 0px;
        }
        .mail {
            margin-top: 11px;
            font-size: 15px;
            display: inline-block;
            border-top: 2em solid transparent;
            border-left: 2.6em solid #832032;
            height: 0;
            width: 0;
            position: relative;
        }
        .mail:before {
            content: '';
            top: -2.5em;
            left: -2.95em;
            display: block;
            position: absolute;
            border-top: 1.2em solid #832032;
            border-left: 1.6em solid transparent;
            border-right: 1.6em solid transparent;
            border-bottom: 1em solid transparent;
            font-size: 0.8em;
        }
        .mail::after {
            display: block;
            content: "";
            position: absolute;
            border-top: 2em solid transparent;
            border-right: 2.6em solid #832032;
            height: 0;
            width: 0;
            left: -2.18em;
            bottom: 0;
        }
        #checkcontact{
            position: absolute;
            left: -9999px;
        }
        .contactform {
            overflow: hidden;
            max-height: 0px;
            -webkit-transition: all linear 1s;
            -moz-transition: all linear 1s;
            -o-transition: all linear 1s;
            -ms-transition: all linear 1s;
            transition: all linear 1s;
        }
        #checkcontact:checked + .contactform {
            max-height: 1000px;
        }
        .input_wrapper {
            position: relative;
        }
        .textarea_wrapper textarea {
            margin-top: 20px;
            display: block;
            width: 100%;
            background: white;
            border: 1px solid #DADADA;
            box-shadow: 0 0 1px 0 #E4E4E4;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            padding: 1em;
            -webkit-transition: all 250ms ease;
            -moz-transition: all 250ms ease;
            -ms-transition: all 250ms ease;
            -o-transition: all 250ms ease;
            transition: all 250ms ease;
            color: #5E5E5E;
        }
        .input_wrapper input[type="text"] {
            margin-top: 1em;
            display: block;
            width: 100%;
            background: white;
            border: 1px solid #DADADA;
            box-shadow: 0 0 1px 0 #E4E4E4;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            padding: 1em;
            -webkit-transition: all 250ms ease;
            -moz-transition: all 250ms ease;
            -ms-transition: all 250ms ease;
            -o-transition: all 250ms ease;
            transition: all 250ms ease;
            color: #5E5E5E;
            text-indent: 15%;
        }
        .input_wrapper input[type="text"]:focus {
            background: rgba(242, 56, 90, 0.05);
            box-shadow: inset 2px 2px 5px 0 #DADADA;
            outline: none;
            text-indent: 0;
        }
        .input_wrapper label {
            position: absolute;
            left: 0;
            top: 0;
            height: 100%;
            background: #F2385A;
            color: white;
            font-family: Oswald ,sans-serif;
            box-sizing: border-box;
            width: 15%;
            text-align: center;
            line-height: 2.8em;
            -webkit-transition: all 250ms ease;
            -moz-transition: all 250ms ease;
            -ms-transition: all 250ms ease;
            -o-transition: all 250ms ease;
            transition: all 250ms ease;
        }
        .input_wrapper input[type="text"]:focus + label {
            left: 85%;
        }
        .textarea_wrapper textarea {
            margin-top: 20px;
            display: block;
            width: 100%;
            min-height:150px;
            background: white;
            border: 1px solid #DADADA;
            box-shadow: 0 0 1px 0 #E4E4E4;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            padding: 1em;
            -webkit-transition: all 250ms ease;
            -moz-transition: all 250ms ease;
            -ms-transition: all 250ms ease;
            -o-transition: all 250ms ease;
            transition: all 250ms ease;
            color: #5E5E5E;
        }
        .textarea_wrapper textarea:focus {
            background: white;
            box-shadow: inset 2px 2px 5px 0 #DADADA;
            outline: none;
        }
        .submit_wrapper {
            text-align: center;
        }
        .submit_wrapper input {
            text-align: center;
            display: inline-block;
            width: 40%;
            height: 50px;
            margin-top: 1em;
            margin-bottom: 6px;
            cursor: pointer;
            background: #F2385A;
            color: white;
            font-family: Oswald ,sans-serif;
            font-size: 1em;
            border: none;
            -webkit-box-shadow: 1px 1px 0 0 #832032,2px 2px 0 0 #832032,3px 3px 0 0 #832032;
            box-shadow: 1px 1px 0 0 #832032,2px 2px 0 0 #832032,3px 3px 0 0 #832032;
            -webkit-appearance: none;
            -webkit-transition: all 250ms ease;
            -moz-transition: all 250ms ease;
            -ms-transition: all 250ms ease;
            -o-transition: all 250ms ease;
            transition: all 250ms ease;
        }
        .submit_wrapper input:hover {
            -webkit-box-shadow: 1px 1px 0 0 #832032,0px 0px 0 0 #832032,0px 0px 0 0 #832032;
            box-shadow: 1px 1px 0 0 #832032,0px 0px 0 0 #832032,0px 0px 0 0 #832032;
            margin-top: 22px;
            margin-left: 2px;
            margin-bottom: 0px;
        }

        @media (max-width: 500px){
            #contact {
                width: 100%;
            }
            .input_wrapper label {
                line-height: 3.5em;
                font-size: 0.8em;
            }
        }

    </style>

    <title>Contact Page</title>
</head>
<body>

<!--------------------------------------------->
<%@include file="/views/layout/header.jsp" %>

<div class="content">
    <div class="text">
        <h1>CONTACT</h1>
        <h5><a href="${pageContext.request.contextPath}/home" style="color: black; text-decoration: none;"> Home </a> >
            <a href="ContactPage.jsp" style="color: black; text-decoration: none;"> Contact </a></h5>
    </div>
</div>

<!--------------------------------------->
<section id="contact">
    <div class="sectionheader">	<h1 style="text-align: center;">CONTACT US</h1></div>
    <article>
        <p style="text-align: center; margin-top: -10px;">FPT University - SE17B_F10 - Group 2</p>

        <label for="checkcontact" class="contactbutton"><div class="mail"></div></label><input id="checkcontact" type="checkbox">

        <form action="" method="post" class="contactform">
            <p class="input_wrapper"><input type="text" name="contact_nom" value=""  id ="contact_nom"><label for="contact_nom" style="background-color: #B88E2F; font-size:
                                                                                                                              14px;">NAME</label></p>
            <p class="input_wrapper"><input type="text" name="contact_email" value=""  id ="contact_email"><label for="contact_email" style="background-color: #B88E2F; font-size: 14px;">EMAIL</label></p>
            <p class="input_wrapper"><input type="text" name="contact_sujet" value=""  id ="contact_sujet"><label for="contact_sujet" style="background-color: #B88E2F; font-size: 14px;">SUBJECT</label></p>
            <p class="textarea_wrapper"><textarea name="contact_message" id="contact_message"></textarea></p>
            <p class="submit_wrapper"><input type="submit" value="SEND" style="background-color: #B88E2F;"></p>
        </form>
    </article>
</section>

<!---------------------------------------------------->

<div class="quality_holder" style="background-color:#FAF3EA; height: 300px; margin-top: 20px;">
    <div class="quality_box"
         style="background-color:#FAF3EA; vertical-align: central; align-items: center; margin-left: 98px; margin-right: 98px;">
        <div class="quality_1" style="margin-top: 110px;">
            <img src="./Image/trophy 1.svg">
            <span style="font-weight: bold; margin-top: -0px;">High quality</span><br>
            <span style="margin-left: 62px;">crafted from top materials</span>
        </div>


        <div class="quality_2" style="margin-top: 110px;">
            <img src="./Image/guarantee.svg">
            <span style="font-weight: bold;">Warranty Protection</span><br>
            <span style="margin-left: 62px;">over 2 years</span>
        </div>

        <div class="quality_3" style="margin-top: 110px;">
            <img src="./Image/shipping.svg">
            <span style="font-weight: bold;">Free Shipping</span><br>
            <span style="margin-left: 62px;">Order over 150 $</span>
        </div>

        <div class="quality_4" style="margin-top: 110px;">
            <img src="./Image/customer-support.svg">
            <span style="font-weight: bold;">24 / 7 Support</span><br>
            <span style="margin-left: 62px;">Dedicated support</span>
        </div>
    </div>
</div>
<!---------------------------------------------------->
<%@include file="/views/layout/footer.jsp" %>

</body>