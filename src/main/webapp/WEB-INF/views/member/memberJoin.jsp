<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<div id="layer"
   style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
   <img src="//t1.daumcdn.net/postcode/resource/images/close.png"
      id="btnCloseLayer"
      style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1"
      onclick="closeDaumPostcode()" alt="닫기 버튼">
</div>
    <style>
        /* Make the image fully responsive */
        .carousel-inner img {
          width: 100%;
          height: 100%;
        }
     
        .col-sm-6 {
          text-align:center;
        }
     
        .nav-link {
          color:black;
        }
        .header a:hover {
          text-decoration: underline;
          color:black;
        }
     
        .card {
          display:inline-block;
          margin:10px;
          box-sizing: border-box;
        }

        #center{
                padding: 100px;
                text-align: center;
            }

            table button{
                width: 100%;
                margin: 5px;
            }

            #a{
                width: 100%;
                height: 50px;
                margin: 5px;
            }

            .banner img{
            width: 100%;
        }

        .container{
            width: 70%;
        }

        .joinForm b{
            color: red;
        }

        .joinForm{
            border-top: 3px solid orange;
            border-bottom: 1px solid orange;
        }



        .joinForm td{
            text-align: center;
            vertical-align : middle;
        }

        .joinForm button{
            height: 45px;
        }

        .gender input{
            font-size: 1em;
            width: 1.25em; /* 너비 설정 */
            height: 1.25em; /* 높이 설정 */
            vertical-align: middle;
        }

        
        #joinForm {
           width:70%
        }

        .email_ok{
            
            color: red; display: none;
        }
        .email_already{
            
            color:red; display: none;
        }

        .pw_ok{color:red; display: none;}
        .pw_already{color:red; display: none;}

        .id_ok{color:red; display: none;}
        .id_already{color:red; display: none;}



       </style>
    </head>
    <body>
        
    
       <%@ include file="../common/main_top.jsp" %>

        <div id="joinForm" class="container" style="width:50%;">
            
            <h2 style="margin-top: 50px; margin-bottom: 50px; text-align: center;">회원가입</h2>
                
            <form action="/wo9wo9/member/join.do" method="post">
                <h6 style="text-align: right;"><b style="color: red;">*</b>필수입력사항</h6>
                <table class="table table-borderless joinForm">
                    <tbody>
                      <tr>
                        <td>아이디<b >*</b></td>
                        <td style="text-align: left; margin: 0px;" >
                            <input id="user_id"name="memberId" class="form-control" type="text" placeholder="* 6자리 이상의 영문 혹은 영문, 숫자를 조합하여 입력해 주세요." required="required"><br>
                            <span class="id_ok">사용 가능한 아이디입니다.</span>
                            <span class="id_already">사용중인 아이디입니다.</span>
                        </td>
                        <td>
                            <button type="button" class="btn btn-outline-success" onclick="checkId();">중복확인</button>
                        </td>
                      </tr>
                      <tr>
                        <td>비밀번호<b >*</b></td>
                        <td><input id="memberPwd" name="memberPwd" class="form-control" type="password" placeholder="* 영문, 숫자, 특수문자를 조합하여 8자리 이상 입력해 주세요." required="required"></td>
                        <td></td>
                      </tr>
                      <tr>
                        <td>비밀번호 확인<b >*</b></td>
                        <td>
                            <input id="checkPwd" name="checkPwd" class="form-control" type="password" placeholder="* 비밀번호 재입력" required="required">
                            <span class="pw_ok">일치</span>
                            <span class="pw_already">일치하지 않음.</span>
                        </td>
                        <td></td>
                      </tr>
                      <tr>
                          <td>이름<b >*</b></td>
                          <td><input id="memberName" name="memberName" class="form-control" type="text" placeholder="* 한글은 10자, 영문은 20자 이내로 입력해주세요." required="required"></td>
                          <td></td>
                      </tr>
                      <tr>
                          <td>휴대폰<b >*</b></td>
                          <td><input id="phone" name="phone" class="form-control" type="text" placeholder="* 예)010-1111-1111" required="required"></td>
                          <td></td>
                      </tr>
                      <tr>
                          <td>이메일<b >*</b></td>
                          <td id="goCheck" style="text-align: left; margin: 0px;">
                              <input type="hidden" name="emailCheckResult" value="0">
                              <input id="email" name="email" class="form-control" type="email" placeholder="* 예) abcd@naver.com" required="required">
                              <span class="email_ok">사용 가능한 이메일입니다.</span>
                              <span class="email_already">사용중인 이메일입니다.</span>
                          </td>
                          <td><button type="button" class="btn btn-outline-success" onclick="checkEmail();">중복확인</button></td>
                      </tr>
                      <tr>
                          <td>주소<b >*</b></td>
                          <td>
                                            <div class="row mb-3">
                                                <div class="col-md-9">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id = "postNo" name="postNo" type="text" placeholder="우편번호" required readonly/>
                                                    </div>
                                                </div>
                                            </div>
                                           
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id = "address" name="address"  type="text" placeholder="주소" required readonly/>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="detailAddress" name="detailAddress" type="text" placeholder="상세 주소 입력" />
                                            </div>
                          </td>
                          <td>
                              <div>
                                 <button type="button" id = "postnumBnt"  name = "postnumBnt"  class="btn btn-outline-success" onclick="serchPostClicked()" >우편번호 찾기</button>
                                                    
                              </div>
                          </td>
                      </tr>
                      <tr>
                          <td>성별<b >*</b></td>
                          <td>
                              <div class="form-check-inline gender">
                                  <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="gender" value="M">남자
                                  </label>
                                </div>
                                <div class="form-check-inline gender">
                                  <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="gender" value="W">여자
                                  </label>
                                </div>
                                <div class="form-check-inline gender">
                                  <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="gender" value="N" checked>선택안함
                                  </label>
                              </div>
                          </td>
                          <td></td>
                      </tr>
                      <tr>
                            <td>생년월일<b >*</b></td>
                            <td><input id="birth" name="birth" class="form-control" type="text" placeholder="* 예)19990101" required="required"></td>
                            <td></td>
                      </tr>  
                    </tbody>
                  </table>

                  <button id="joinSuccess"class="btn btn-success" type="submit" style="width: 100%; margin-top: 70px; margin-bottom:50px; height: 70px;"> 가입하기</button><br>
            </form>
          </div>

         <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> <!-- 다음주소API -->
         
         <script>
         //우편번호 찾기 눌렀을때 실행
            function serchPostClicked(){
                new daum.Postcode({
                    oncomplete: function(data) {
                       
                         var addr='';
                         
                         if(data.userSelectedType ==='R'){
                            addr=data.roadAddress;
                         }
                         else{
                            addr=data.jibunAddress;
                         }
                         document.getElementById('postNo').value=data.zonecode;
                         document.getElementById('address').value=addr;
                       
                         $("#enroll-form button[name=postnumBnt]").attr("disabled", true);
                         document.getElementById('detailAddress').focus();  
                    }
                 }).open();
               
                }
            $("#joinSuccess").click(function() {
                
                var regExp = /^[0-9][0-9][0-9]-[0-9]{3,4}-[0-9][0-9][0-9][0-9]$/;
                var phone = document.getElementById('phone').value;
                if(!regExp.test(phone)) {
                    alert("전화번호를 확인 해주세요(-포함 12~13자리)");
                    document.getElementById('phone').focus();
                    return false;
                }
                var regExp = /^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/
                var birth = document.getElementById('birth').value;
                if(!regExp.test(birth)) {
                    alert("생년월일을 확인 해주세요(예시 20210101)");
                    document.getElementById('birth').focus();
                    return false;
                }
                var regExp = /^[0-9A-Za-z]{4,15}$/;
                var memberPwd = document.getElementById('memberPwd').value;
                if(!regExp.test(memberPwd)) {
                    alert("비밀번호 형식을 확인해주세요 (영 대소문자 숫자 4~15자리)");
                    document.getElementById('memberPwd').focus();
                    return false;
                }

                //document.getElementById('address').value=
                if($('#emailCheckResult').value != '0'){
                    console.log($('#emailCheckResult').value);
                    return true;
                }
                else{
                    alert("이메일 중복 확인을 해주세요");
                    console.log($('#emailCheckResult').value);
                    return false;
                }
                

    			
    			});
 
               
         </script>


            <script type="text/javascript">
                function checkEmail(){
                    var email = $('#email').val();

                    var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i; 
                    var email = document.getElementById('email').value;
                    if(!regExp.test(email)) {
                        alert("이메일 형식을 확인해주세요");
                        document.getElementById('email').focus();
                        return false;
                    }
                   

                    $.ajax({
                        url:'emailCheck.do', //Controller에서 인식할 주소
                        type:'get',
                        data :{email:email},
                        success:function(result){ //컨트롤러에서 넘어온 값을 받는다 
                        	
                        	 console.log(result);
                        
                           if(result == 0){ //사용 가능한 
                               $('.email_ok').css("display","inline-block"); 
                               $('.email_already').css("display", "none");
                               $('#emailCheckResult').value=='1';
                               
                           } else { //  이미 존재하는
                               $('.email_already').css("display","inline-block");
                               $('.email_ok').css("display", "none");
                               $('#emailCheckResult').value=='1';
                               
                           }
                        },
                        error:function(){
                            alert("에러입니다");
                        }
                    });
                };

                function checkId(){
                    var memberId = $('#user_id').val();

                    $.ajax({
                        url:'idsCheck.do', //Controller에서 인식할 주소
                        type:'get',
                        data :{memberId:memberId},
                        success:function(result){ //컨트롤러에서 넘어온 값을 받는다 
                        	
                        	 console.log(result);
                        
                           if(result == 0){ //사용 가능한 
                            
                               $('.id_ok').css("display","inline-block"); 
                               $('.id_already').css("display", "none");
                               
                           } else { //  이미 존재하는
                            
                               $('.id_already').css("display","inline-block");
                               $('.id_ok').css("display", "none");
                               
                           }
                        },
                        error:function(){
                            alert("에러입니다");
                        }
                    });
                };

            </script>

            <script>
                $(function(){

                //비밀번호 확인
                    $('#checkPwd').blur(function(){
                    if($('#memberPwd').val() != $('#checkPwd').val()){
                        if($('#checkPwd').val()!=''){
                            alert("비밀번호가 일치하지 않습니다.");
                            $('#checkPwd').val('');
                            $('#checkPwd').focus();
                        }
                        }
                    })  	   
                });


            </script>
<!--
            <script>
        $(function() {
         
         // blur : 인풋태그에서 포커스를 잃었을 때 발생하는 이벤트
         $("#email").blur(function() {
            
            // 할일 : 이름이 DB 에 있는지 확인해서 결과를 입력창 밑에 있는 span 에 출력하기
            var email = $("#email").val();
         
            $.ajax({
               url : "${ pageContext.request.contextPath }/emailCheck.do", 
                     // 아이디 조회하는 곳 
               type : "get", 
               data : { email : email }, 
               success:function(result){ //컨트롤러에서 넘어온 값을 받는다 
            
                if(result == 0){ //사용 가능한 
                    $('.email_ok').css("display","inline-block"); 
                    $('.email_already').css("display", "none");
                    
                } else { //  이미 존재하는
                    $('.email_already').css("display","inline-block");
                    $('.email_ok').css("display", "none");
                }
            },
            error:function(){
                alert("에러입니다");
            }
        });   
});
            </script>
-->

            
            

            
            <%@ include file="../common/main_bottom.jsp" %>
     
    </body>
</html>