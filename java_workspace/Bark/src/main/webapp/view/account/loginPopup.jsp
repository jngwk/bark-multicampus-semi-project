<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="${css }/loginPopup.css" />
    <!-- <script src="../js/popup.js"></script> -->
  </head>
  <body id="login-popup">
    <div class="popup_layer" id="popup_layer">
      <div class="popup_box">
        <div class="popup_btn close-pop">
          <img src="${icons }/x-regular-36.png" alt="x" />
        </div>
        <!--팝업 컨텐츠 영역-->
        <div class="popup_content">
          <div class="cont">
            <div class="form sign-in">
              <h2>
                <img
                  src="${images }/bark_logo-removebg-trimmed.png"
                  alt="logo"
                />
              </h2>
              <form class="form-slider" action="#" method="post">
                <div class="form-slides cont-slides">
                  <!-- 공통 -->
                  <div class="form-slide">
                    <label>
                      <span>아이디</span>
                      <input type="text" />
                    </label>
                    <label>
                      <span>비밀번호</span>
                      <input type="password" />
                    </label>
                    <p class="forgot-id-pwd">아이디 | 비밀번호 찾기</p>
                    <button type="button" class="submit login-btn">
                      로그인
                    </button>
                    <button type="button" class="fb-btn">
                      <span>간편</span> 로그인
                    </button>
                  </div>
                  <!-- 계정찾기 -->
                  <div class="form-slide">
                    <label>
                      <span>이름</span>
                      <input type="text" />
                    </label>
                    <label>
                      <span>이메일</span>
                      <input type="email" />
                    </label>
                    <button type="button" class="submit find-account-btn">
                      계정 찾기
                    </button>
                    <button type="button" class="login-prev-btn">
                      돌아가기
                    </button>
                  </div>
                </div>
              </form>
            </div>
            <div class="sub-cont">
              <div class="img">
                <div class="img__text m--up">
                  <h2>새로 오셨나요?</h2>
                  <p>저희와 함께 집을 잃은 <br />아이들을 도와주세요</p>
                </div>
                <div class="img__text m--in">
                  <h2>계정이 있으신가요?</h2>
                  <p>바크를 다시 찾아주셔서 감사합니다!</p>
                </div>
                <div class="img__btn">
                  <span class="m--up">회원가입</span>
                  <span class="m--in">로그인</span>
                </div>
              </div>
              <!-- 회원 가입 -->
              <div class="form sign-up">
                <h2>
                  <img
                    src="${images }/bark_logo-removebg-trimmed.png"
                    alt="logo"
                  />
                </h2>
                <!-- 1단계 -->
                <form class="form-slider" action="#" method="post">
                  <div class="form-slides sub-cont-slides">
                    <!-- 공통 -->
                    <div class="form-slide">
                      <label>
                        <span>아이디</span>
                        <input type="text" />
                      </label>
                      <label>
                        <span>비밀번호</span>
                        <input type="password" />
                      </label>

                      <label>
                        <span>비밀번호 확인</span>
                        <input type="password" />
                      </label>
                      <button type="button" class="general-btn">
                        개인 회원
                      </button>
                      <button type="button" class="shelter-btn">
                        보호소 회원
                      </button>
                    </div>
                    <div class="form-slide">
                      <label>
                        <span>이름</span>
                        <input type="text" />
                      </label>
                      <label>
                        <span>전화번호</span>
                        <input type="text" />
                      </label>
                      <label>
                        <span>이메일</span>
                        <input type="email" />
                      </label>
                      <button type="button" class="next-btn">다음</button>
                      <button type="button" class="prev-btn">이전</button>
                    </div>
                    <!-- 보호소 -->
                    <div class="form-slide shelter-slide">
                      <label>
                        <span>예금주</span>
                        <input type="text" />
                      </label>
                      <label>
                        <span>은행명</span>
                        <input type="text" />
                      </label>
                      <label>
                        <span>계좌번호</span>
                        <input type="text" />
                      </label>
                      <button type="button" class="next-btn">다음</button>
                      <button type="button" class="prev-btn">이전</button>
                    </div>
                    <div class="form-slide shelter-slide">
                      <label>
                        <span>주소</span>
                        <input type="text" />
                      </label>
                      <label>
                        <span>세부 주소</span>
                        <input type="text" />
                      </label>
                      <label>
                        <span>계좌번호</span>
                        <input type="text" />
                      </label>
                      <button type="button" class="next-btn">다음</button>
                      <button type="button" class="prev-btn">이전</button>
                    </div>
                    <div class="form-slide complete">
                      <p>회원가입이 완료 되었습니다!</p>
                      <p>로그인 후 이용해주세요</p>
                    </div>
                  </div>
                </form>
              </div>
              <!-- end of sign up -->
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
