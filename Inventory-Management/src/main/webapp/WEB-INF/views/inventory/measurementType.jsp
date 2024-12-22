<%@ page import="com.app.entity.inventory.MeasurementTypeEntity" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Measurement Type</title>
    <jsp:include page="../../common/common_link.jsp"></jsp:include>
</head>
<body>
<div class="container my-4">
    <div class="d-flex justify-content-between align-items-center">
        <h3>Measurement Type</h3>
        <button class="btn btn-primary" onclick="addEditItemPage()">Add Measurement Type</button>
    </div>
    <div class="my-3">
        <table class="table table-bordered">
            <thead class="table-light">
            <tr>
                <th scope="col">Sr No.</th>
                <th scope="col">Measurement Type</th>
                <th scope="col">Created By</th>
                <th scope="col">Created On</th>
                <th scope="col">Action</th>
            </tr>
            </thead>
            <tbody>
            <%
                List<MeasurementTypeEntity> measurementTypeEntityList =
                        (List<MeasurementTypeEntity>) request.getAttribute("measurementTypeList");
                if (measurementTypeEntityList != null && !measurementTypeEntityList.isEmpty()) {
                    int i = 1;
                    for (MeasurementTypeEntity entity : measurementTypeEntityList) {
            %>
            <tr>
                <td><%= i++ %></td>
                <td><%= entity.getName() %></td>
                <td><%= entity.getCreatedBy()%></td>
                <td><%= entity.getCreatedOn()%></td>

<%--                <td><%= entity.getCreatedOn() != null ? entity.getCreatedOn() : "N/A" %></td>--%>
                <td>
                    <div class="action-buttons">
                        <button class="btn btn-primary btn-sm" onclick="editMeasurementType('<%= entity.getId() %>')">Edit</button>
                        <button class="btn btn-danger btn-sm" onclick="deleteMeasurementType('<%= entity.getId() %>')">Delete</button>
                    </div>
                </td>


            </tr>
            <%
                }
            } else {
            %>
            <tr>
                <td colspan="5" class="text-center">No Measurement Types Found</td>
            </tr>
            <%
                }
            %>
            </tbody>
        </table>
    </div>
</div>

<!-- Modal for Add/Edit -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add/Edit Measurement Type</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="/rest/inventory/saveUpdateMeasurementType" method="post">
                    <div class="mb-3">
                        <label for="name" class="col-form-label">Measurement Type Name</label>
                        <input type="text" class="form-control" id="name" name="name" required>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
    function addEditItemPage() {
        $("#exampleModal").modal("show");
    }

    function editMeasurementType() {
        alert("Edit functionality for ID: " + id);
        $("#exampleModal").modal("show");
    }

    function deleteMeasurementType() {
        alert("delete functionality for ID: " + id);
        $("#exampleModal").modal("show");
    }
</script>
</body>
</html>
