create table admin(--관리자
	admin_no    varchar2 --관리자고유번호
	admin_id    varchar2 --아이디
	admin_pwd   varchar2 --비밀번호
	admin_name  varchar2 --이름
	admin_level number --권한등급
	admin_email varchar2 --이메일
	admin_phone number --전화번호
);

insert into admin values();







create table user( --사용자
	user_id	        varchar2 --아이디
	user_pwd	    varchar2 --비밀번호
	user_name	    varchar2 --이름(닉네임)
	user_no	        varchar2 --회원 고유번호(시퀀스 사용)
	user_address1	varchar2 --기본주소
	user_address2	varchar2 --기본주소
	user_email	    varchar2 --이메일
	user_birth	    date --생년월일
	user_gender	    number --성별
	user_phone	    number --휴대폰
);

insert into user values();








create table QNA( --QNA
	qna_code	  INT --Q&A 고유 번호
	prod_id	      INT --상품 ID
	user_id	      INT --사용자 ID
	qna_question  TEXT --질문 내용
	qna_answer	  TEXT --답변 내용
	answered_by	  INT --답변자 사용자 ID 
	answer_status ENUM --답변 상태
	answer_date	  date --질문 작성 날짜
	qna_image	 --게시글제목
	qna_readCount --조회수
	qna_file --첨부파일
);

insert into QNA values();












create table product_information( --상품정보
	product_id	             varchar2 --상품 고유코드(ID)
	product_name	         varchar2 --상품 이름
	product_category         varchar2 --상품 분류
	product_registration	 date --상품 등록일
	product_price	         number --상품 가격
	product_cultivation_plot varchar2 --상품 재배지
	product_desc	         varchar2 --상품설명 
	product_image	         varchar2 --대표상품이미지
	product_image	         varchar2 --상세상품이미지
	product_readCount	     number --조회수
);

insert into product_information values();













create table Order_History( --주문내역
	order_user_no	       varchar2 --회원 고유번호
	order_product_no	   varchar2 --상품고유코드
	order_product_name	   varchar2 --구매상품이름
	orderbuy_stock	       varchar2 --구매수량
	order_date	           date --구매일자
	order_shipping_address varchar2 --배송주소
	order_total_amount	   number --총 결제 금액
	order_payment_status   varchar2 --결제 상태
	order_delivery_status  varchar2 --송장번호
	order_user_id	       varchar2 --사용자ID
	order_user_name	       varchar2 --사용자이름
	order_history_code	   varchar2 --주문내역코드
	order_state	           varchar2 --주문 상태
	
	total_price --총액
);

insert into Order_History values();








create table review( --리뷰페이지
	review_code	    int --리뷰고유ID
	user_id	        varchar2 --아이디
	product_no	    varchar2 --상품 고유코드
	product_name	varchar2 --상품 이름
	review_rating	int --평점
	review_content	text --내용
	review_date	    datetime --작성일
	review_image	varchar2 --리뷰이미지
	review_title	 --게시글제목
);

insert into review values();







create table product_stock( --product_stock
	product_no	    varchar2 --상품고유코드
	product_stock	number --수량
);

insert into product_stock values();








create table Shopping_Cart( -- 장바구니
	shopping_user_no	    varchar2 --사용자 고유번호
	shopping_product_no	    varchar2 --상품코드
	shopping_product_name	varchar2 --상품 이름
	shopping_product_price	number --상품 가격
	shopping_cart_quant	    number --담긴수량
	
	cart_id(primary key)	int --장바구니고유번호 
	user_id(Foreign Key)	 --사용자ID
);

insert into Shopping_Cart values();








create table pay( --결제페이지
	payment_no	        INT -- 결제 고유 번호
	order_id	        INT --주문 ID 
	payment_method	    ENUM --credit_card', 'paypal', 'bank_transfer'
	payment_amount	    DECIMAL(10, 2) --결제 금액
	payment_status	    ENUM --결제 상태
	payment_createdate	date --결제 날짜
	payment_updatedate	date --결제 상태 업데이트 날짜
);

insert into pay values();




















