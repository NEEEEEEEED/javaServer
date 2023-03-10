<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
noticeListAjax.jsp=> return "notice/noticeListAjax.tiles"
서버: noticeListJson.do => json 데이터 반환.
<link href="https://cdn.datatables.net/1.13.2/css/jquery.dataTables.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.13.2/js/jquery.dataTables.min.js"></script>

<div>
	작성자:<input type="text" id="writer" value="user1" readonly> 제목:<input
		type="text" id="title"> 내용:<input type="text" id="subject">
	<button id="addBtn">저장</button>
	<button id="delBtn">삭제</button>
</div>

<table id="example" class="display" style="width:100%">
        <thead>
            <tr>
			<th>글번호</th>
			<th>작성자</th>
			<th>제목</th>
			<th>조회수</th>
			<th>작성일자</th>
		</tr>
        </thead>

        <tfoot>
            <tr>
			<th>글번호</th>
			<th>작성자</th>
			<th>제목</th>
			<th>조회수</th>
			<th>작성일자</th>
		</tr>
        </tfoot>
    </table>

<script>
$(document).ready(function () {
    $('#example').DataTable({
        ajax: 'noticeListJson.do',
    });
});

</script>