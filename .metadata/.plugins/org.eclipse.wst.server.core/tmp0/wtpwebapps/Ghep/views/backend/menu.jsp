<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="layout/head.jsp"></jsp:include>
<body class="hold-transition skin-blue sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">

  <jsp:include page="layout/header.jsp"></jsp:include>

  <!-- =============================================== -->

  <!-- Left side column. contains the sidebar -->
 <ul class="sidebar-menu" data-widget="tree">

        <li class="active">
          <a href="menu.html">
            <i class="fa fa-th"></i> <span>Quản lý Menu </span>
            <span class="pull-right-container">
              <small class="label pull-right bg-green">FE</small>
            </span>
          </a>
        </li>

        <li class="treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href=""><i class="fa fa-circle-o"></i> Dashboard v1</a></li>
            <li><a href=""><i class="fa fa-circle-o"></i> Dashboard v2</a></li>
          </ul>
        </li>
        
        <li>
          <a href="">
            <i class="fa fa-th"></i> <span>Widgets</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-green">Hot</small>
            </span>
          </a>
        </li>
        
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- =============================================== -->

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Quản lý menu trang giao diện
       
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Examples</a></li>
        <li class="active">Blank page</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
           <a href="add-menu.html" class="btn btn-success">+Thêm mới Menu</a>

              <div class="box-tools">
                <div class="input-group input-group-sm" style="width: 150px;">
                  <input type="text" name="table_search" class="form-control pull-right" placeholder="Search">

                  <div class="input-group-btn">
                    <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                  </div>
                </div>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <tbody><tr>
                  <th>Tên</th>
                  <th>Menu cha</th>
                  <th>Ngày tạo</th>
                  <th>Trạng thái</th>
                  <th>Tùy chọn</th>
                </tr>
                <tr>
                  <td>Trang chủ</td>
                  <td>____</td>
                  <td>10-10-2018</td>
                  <td><span class="label label-success">Hiển thị</span></td>
                  <td>
                  <a href="edit-menu.html" class="btn btn-success">Sửa</a>
                  <a href="" class="btn btn-danger">Xóa</a>
                    
                  </td>
                </tr>
                <tr>
                  <td>Giới Thiệu</td>
                  <td>____</td>
                  <td>10-10-2018</td>
                  <td><span class="label label-success">Hiển thị</span></td>
                  <td>
                  <a href="" class="btn btn-success">Sửa</a>
                  <a href="" class="btn btn-danger">Xóa</a>
                    
                  </td>
                </tr>
                <tr>
                  <td>Đào tạo</td>
                  <td>____</td>
                  <td>10-10-2018</td>
                  <td><span class="label label-success">Hiển thị</span></td>
                  <td>
                  <a href="" class="btn btn-success">Sửa</a>
                  <a href="" class="btn btn-danger">Xóa</a>
                    
                  </td>
                </tr>
                <tr>
                  <td>Chương trình đào tạo</td>
                  <td>Đào tạo</td>
                  <td>10-10-2018</td>
                  <td><span class="label label-success">Hiển thị</span></td>
                  <td>
                  <a href="" class="btn btn-success">Sửa</a>
                  <a href="" class="btn btn-danger">Xóa</a>
                    
                  </td>
                </tr>
                <tr>
                  <td>Thi đua khen thưởng</td>
                  <td>Đào tạo</td>
                  <td>10-10-2018</td>
                  <td><span class="label label-danger">Đang ẩn</span></td>
                  <td>
                  <a href="" class="btn btn-success">Sửa</a>
                  <a href="" class="btn btn-danger">Xóa</a>
                    
                  </td>
                </tr>
              </tbody></table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
      <!-- /.box -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  
  <!-- /.content-wrapper -->

 <jsp:include page="layout/footer.jsp"></jsp:include>
</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<jsp:include page="layout/js.jsp"></jsp:include>
</body>
</html>
