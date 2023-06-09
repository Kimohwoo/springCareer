<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>

<%@include file="../include/header.jsp"%>
<body id="page-top">
        
	<!-- Page Wrapper -->
	<div id="wrapper">

		<%@include file="../include/sidebar.jsp"%>

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">
			
				<%@include file="../include/content_topbar.jsp"%>
			
				<!-- Begin Page Content -->
				<div class="container-fluid">
			
					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800">Tables</h1>
					<p class="mb-4">
						DataTables is a third party plugin that is used to generate the demo
						table below. For more information about DataTables, please visit the
						<a target="_blank" href="https://datatables.net">official
							DataTables documentation</a>.
					</p>
			
					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">${sessionScope.admin.name}님 반갑습니다.</h6>
								
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									<thead>
										<tr>
											<th>#번호</th>
											<th>제목</th>
											<th>작성자</th>
											<th>작성일</th>
											<th>수정일</th>
										</tr>
									</thead>
									<c:forEach items="${list}" var="board">
										<tr>
											<td><c:out value="${board.bno}" /></td>
			
											<td><a href='/board/get?bno=<c:out value="${board.bno}"/>'>
													<c:out value="${board.title}" />
											</a></td>
			
											<td><c:out value="${board.writer}" /></td>
											<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate}" /></td>
											<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.updateDate}" /></td>
										</tr>
									</c:forEach>
								</table>
							</div>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- End of Main Content -->


			<%@include file="../include/footer.jsp"%>

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>
	
	<%@include file="../include/modal.jsp"%>

</body>
</html>







