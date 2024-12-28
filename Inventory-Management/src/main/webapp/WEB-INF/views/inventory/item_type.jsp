<%@ page import="java.util.List" %>
<%@ page import="com.app.entity.inventory.ItemTypeEntity" %><%--
  Created by IntelliJ IDEA.
  User: abhis
  Date: 18-12-2024
  Time: 20:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

<%--   jsp include--%>
    <jsp:include page="../../common/common_link.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../../common/nav-bar.jsp"></jsp:include>
<div id="wrapper">
    <!-- Sidebar -->
    <jsp:include page="../../common/side-bar.jsp"></jsp:include>
    <!-- /#sidebar-wrapper -->
    <!-- Page Content -->
    <div id="page-content-wrapper">
        <div class="container-fluid xyz">

            <div class="my-2 text-end mx-5">
                <button class="btn btn-primary" onclick="addEditItemPage()">Add Item Type</button>
            </div>
            <div class="my-2">
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">Sr No.</th>
                        <th scope="col">Name</th>
                        <th scope="col">Prefix</th>
                        <th scope="col">Suffix</th>
                        <th scope="col">Zero Padding</th>
                        <th scope="col">Separator</th>
                        <th scope="col">Start No.</th>
                        <th scope="col">Last No.</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                        List<ItemTypeEntity> itemTypeList=(List<ItemTypeEntity>)request.getAttribute("allItemTypeList");
                        if (itemTypeList!=null && !itemTypeList.isEmpty()){
                            int i=1;
                            for (ItemTypeEntity entity:itemTypeList){

                    %>
                    <tr>
                        <td><%=i++%></td>
                        <td><%=entity.getName()%></td>
                        <td><%=entity.getPrefix()%></td>
                        <td><%=entity.getSuffix()%></td>
                        <td><%=entity.getZeroPadding()%></td>
                        <td><%=entity.getSeparator()%></td>
                        <td><%=entity.getStartNo()%></td>
                        <td><%=entity.getLastNo()%></td>
                    </tr>
                    <%
                            }
                        }

                    %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add/Edit Item type</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="/rest/inventory/saveUpdateItemType" method="post">
                    <div class="mb-3">
                        <label for="name" class="col-form-label">Name</label>
                        <input type="text" class="form-control" id="name" name="name">
                    </div>
                    <div class="mb-3">
                        <label for="prefix" class="col-form-label">Prefix</label>
                        <input type="text" class="form-control" id="prefix" name="prefix">
                    </div>
                    <div class="mb-3">
                        <label for="suffix" class="col-form-label">Suffix</label>
                        <input type="text" class="form-control" id="suffix" name="suffix">
                    </div>
                    <div class="mb-3">
                        <label for="separator" class="col-form-label">Separator</label>
                        <input type="text" class="form-control" id="separator" name="separator">
                    </div>

                    <div class="mb-3">
                        <label for="zero_padding" class="col-form-label">Zero Padding</label>
                        <input type="text" class="form-control" id="zero_padding" name="zero_padding">
                    </div>
                    <div class="mb-3">
                        <label for="start_no" class="col-form-label">Start No</label>
                        <input type="text" class="form-control" id="start_no" name="start_no">
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary" >Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>

<script>
    function addEditItemPage(){
        $("#exampleModal").modal("show");
    }
</script>
