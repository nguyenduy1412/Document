<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	#user{
  cursor: pointer;
  position: relative;
}
#menuAcc{
  display: none;
  position: absolute;
  z-index: 2000;
  background-color:rgb(188,225,237);
  top:100%;
  right: -30px;
}
#menuAcc a{
  text-decoration: none;
}
#menuAcc div{
  height: 50px;
  padding: 10px;
}
#menuAcc div:hover{
  background-color: rgb(246,238,160);
}
.alerts{
   	width: 50%;
    margin: auto;
}
.form-login{
    width: 50%;
    margin: auto;
    background-color: #fff;
    padding: 50px;
    border-radius: 10px;
}
.color-form{
    background-color: white;
	margin: auto;
}
.mat{
    position: absolute;
    right: 20px;
    top:13px;
    cursor: pointer;
}
.form-group{
    margin-top: 20px;
    position: relative;
}
.btn-dangky{
    margin-top: 20px;
    width: 100%;
    border: none;
    height: 50px;
    border-radius: 5px;
    font-weight: bold;
    font-size: 18px;
    display: flex;
    justify-content: center;
    align-items: center;
}
.btn-dangky a{
    color: #fff;
    text-decoration: none;
}
.bg-header{
    background-color: rgb(231,231,231);
}
.bg-nav{
    background-color: rgb(248,248,248);
}
.phone{
    padding-right: 20px;
}
.bg-white{
    background-color: #fff;
}
.col-lg-3 ul li{
    padding: 10px;
    transition: 0.6s;
}
ul li a{
    color: black;
}
 
ul li:hover a{
    text-decoration: none;
    padding-left: 20px;
    transition: 0.6s;
    color: #007bff;
}
.bg-main{
    background-color: rgb(240,242,245);
}
.sach{
    padding: 7.5px !important;
}
.bookname{
    height: 50px;
    padding-top: 5px;
}
.tacgia{
    margin-top: 5px;
    color: #1D9D7D;
    font-weight: bold;
}
.gia{
  
    color:rgb(236,124,38);
    font-weight: bold;
}
.imgbook{
    height: 250px;
}
#giohang{
    width: 400px;	
    position: absolute;
    top:100%;
    right: -60px;
    display: none;
    z-index: 1000;
    background-color: #fff;
    border-radius: 10px;
}

.listCart{
	width: 100%;
	max-height: 350px;
	overflow-y: auto;
}
.detailsp{
    width: 300px;
}
.imgCustomer{
	width: 40%;
	display: flex;
    flex-direction: column;
    align-items: center;
    padding-right:10%;
}	
 .imgCus{
    width: 150px;
    height: 150px;
    border-radius: 50%;
    border: 1px solid gray;
    overflow: hidden;
}
.anhcustomer{
    width: 30px;
    height: 30px;
    border-radius: 50%;
}
.giohang{
	cursor: pointer;
}	
.cursor-pointer{
	cursor: pointer;
}
.quantity{
    width: 50px;
    margin-left: -5px;
    margin-right: -6px;
    
  }
  .quantity:focus {
    outline: none;
}
  .btnup , .btndown{
    width: 35px;
    height: 30px;
    border: 0.5px solid gray;
    background-color: #fff;
  }
  .btnup,.btndown{
    outline: none;
  }
  .btndown:hover{
    background-color: rgb(241,242,244);
  }
  .btnup:hover{
    background-color: rgb(241,242,244);
  }

  .detailcheck{
    transform: scale(2); /* Tăng kích thước 1.5 lần */
    margin-left: 20px;
   
  }
 .sticky-bottom{
    position: fixed;
    bottom: 0;
 }
.thanhtoan{
  display: flex ;
  justify-content: end;
  align-items: center;
  width: 100%;
  background-color: #fff;
  padding: 2% 5% 1% 5%;
}
  .bg-body{
    background-color:rgb(245,245,245);
  }
  .detailcartprice{
    font-size: 20px;
    color: rgb(238,77,58);
    font-weight: bold;

  }
</style>