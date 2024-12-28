<%@ page import="com.app.entity.inventory.ItemTypeEntity" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: abhis
  Date: 22-12-2024
  Time: 14:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>item</title>
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
                <button class="btn btn-primary" onclick="addEditItemPage()">Add Item</button>
            </div>
            <div class="my-2">
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">Sr No.</th>
                        <th scope="col">Name</th>
                        <th scope="col">Item code</th>
                        <th scope="col">Measurement Type</th>
                        <th scope="col">Item Type</th>
                        <th scope="col">HSN Code</th>
                        <th scope="col">Opening Price</th>
                        <th scope="col">Sale price</th>

                    </tr>
                    </thead>

                </table>
            </div>

        </div>
    </div>
</div>


<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add/Edit Item </h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="">
                    <div class="mb-3">
                        <label for="name" class="col-form-label">Name</label>
                        <input type="text" class="form-control" id="name" name="name">
                    </div>
                    <div class="mb-3">
                        <label for="itemTypeId" class="col-form-label">Item Type </label>
                        <select id="itemTypeId" name="itemTypeId" class="form-control"></select>
                    </div>
                    <div class="mb-3">
                        <label for="measurementTypeId" class="col-form-label">Measurement Type Id</label>
                        <select id="measurementTypeId" name="measurementTypeId" class="form-control"></select>
                    </div>
                    <div class="mb-3">
                        <label for="OpeningBalance" class="col-form-label">Opening Balance</label>
                        <input type="number" class="form-control" id="OpeningBalance" name="OpeningBalance">
                    </div>

                    <div class="mb-3">
                        <label for="salePrice" class="col-form-label">Sale Price</label>
                        <input type="number" class="form-control" id="salePrice" name="salePrice">
                    </div>
                    <div class="mb-3">
                        <label for="hsnCode" class="col-form-label">hsn Code</label>
                        <input type="text" class="form-control" id="hsnCode" name="hsnCode">
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>


<script>
    function addEditItemPage() {
        $("#exampleModal").modal("show");
    }
    $(document).ready(function(){
       getItemBasicDetails();
    });

    function getItemBasicDetails() {

            $.ajax({
                url: "/rest/inventory/getItemBasicDetails",
                type: "GET",
                success: function (res){
                    if (res){
                        let itemTypeList=res.itemTypeList
                        let measurementTypeList=res.measurementTypeList
                        let itemTypeOption="<option value='-1'>Select Item Type</option>";
                        let measurementTypeOption="<option value='-1'>Select Measurement Type</option>";
                        if (itemTypeList){
                            for (let i=0;i<itemTypeList.length;i++){
                                let data=itemTypeList[i];
                                itemTypeOption +="<option value='"+data.id+"'>"+data.name+"</option>";
                            }
                        }
                        if (measurementTypeList){
                            for (let i=0;i<measurementTypeList.length;i++){
                                let data=measurementTypeList[i];
                                measurementTypeOption +="<option value='"+data.id+"'>"+data.name+"</option>";
                            }
                        }
                        $("#itemTypeId").html(itemTypeOption);
                        $("#measurementTypeId").html(measurementTypeOption);


                    }
                }
            })
    }

</script>
